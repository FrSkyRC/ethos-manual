#!/bin/python3

"""Converts an OpenDocument Text (.odt) manual to Markdown.

Unzips the .odt, parses its content.xml (OpenDocument XML), and walks the
document tree to produce a Markdown file: headings, paragraphs (with basic
bold/italic), bulleted/numbered lists (including nesting), tables, and
images. Images are extracted from the .odt's "Pictures/" entries into an
"assets/" folder next to the output Markdown file, and referenced from the
Markdown with their original relative path (e.g. "Pictures/xxxx.png"), so
the Markdown -> assets references stay intact. Some images may be linked rather
than embedded (xlink:href pointing outside "Pictures/", e.g.
"../assets/foo.png"); those are resolved relative to the .odt's directory,
falling back to "<odt_dir>/assets/<basename>", and copied in too. Every
image, embedded or linked, is (re-)saved as a losslessly compressed PNG
regardless of its original format (this .odt embeds ~200 images as BMP), and
referenced with a ".png" extension in the Markdown.

This is a pragmatic converter, not a full ODF renderer: styles are
approximated (bold/italic only, based on the Latin fo:font-weight /
fo:font-style properties), footnote bodies are dropped (only the citation
marker is kept), and page-decoration shapes (draw:custom-shape, e.g. cover
page boxes) are skipped as non-content.

Pass --split-chapters to split the output into one folder per top-level (#)
heading (named after a slug of its title, e.g. "model-setup/"), holding an
index.md (the chapter's own intro text, before its first ## heading) plus
one .md file per second-level (##) heading in it. A top-level index.md ties
it together with a table of contents. All files share the same assets/
folder (referenced with the right "../" depth), so image references stay
valid. Internal cross-reference links in the source document (e.g. "see the
RF System section") are resolved to point at whichever output file the
target heading/bookmark ended up in; a link whose target can't be found
anywhere is left as a same-file "#name" anchor (dead, same as it was before
splitting) and reported as unresolved.

Pass --summary (requires --split-chapters) to also write a SUMMARY.md
(GitBook-style page list, see e.g. french/SUMMARY.md).

Example:
    python forge/odt_to_markdown.py "english/EN Ethos_User_Manual_26.1.0-rev16.odt" --split-chapters --summary
"""

import argparse
import io
import os
import re
import sys
import zipfile
import xml.etree.ElementTree as ET

from PIL import Image

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

NS = {
    "office": "urn:oasis:names:tc:opendocument:xmlns:office:1.0",
    "text": "urn:oasis:names:tc:opendocument:xmlns:text:1.0",
    "table": "urn:oasis:names:tc:opendocument:xmlns:table:1.0",
    "draw": "urn:oasis:names:tc:opendocument:xmlns:drawing:1.0",
    "xlink": "http://www.w3.org/1999/xlink",
    "style": "urn:oasis:names:tc:opendocument:xmlns:style:1.0",
    "fo": "urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0",
}

ASSETS_DIR_NAME = "assets"

# Internal placeholders, resolved to their final value only once we know
# which output file a piece of content lands in (its assets/ depth, and -
# for internal cross-reference links - which file the link's target bookmark
# ended up in). Built from \x00 so they can never collide with real document
# text, and stripped/replaced before anything is written to disk.
ASSETS_PLACEHOLDER = "\x00ASSETS\x00"
LINK_OPEN, LINK_SEP, LINK_CLOSE = "\x00LINK\x00", "\x00SEP\x00", "\x00ENDLINK\x00"
LINK_RE = re.compile(re.escape(LINK_OPEN) + r"(.*?)" + re.escape(LINK_SEP) + r"(.*?)" + re.escape(LINK_CLOSE), re.S)


def q(prefix, name):
    """Builds a fully-qualified ElementTree tag/attribute name, e.g.
    q("text", "p") -> "{urn:oasis:...text:1.0}p"."""
    return f"{{{NS[prefix]}}}{name}"


def localname(tag):
    return tag.split("}", 1)[1] if "}" in tag else tag


def get_style_name(el):
    """Returns an element's style name attribute, whichever namespace it's
    declared under (text:/table:/draw: all use their own style-name)."""
    for prefix in ("text", "table", "draw"):
        value = el.get(q(prefix, "style-name"))
        if value is not None:
            return value
    return None


def build_text_styles(root):
    """Maps text style name -> {"bold": bool, "italic": bool}, based on the
    Latin fo:font-weight / fo:font-style properties (asian/complex-script-only
    variants are ignored, as they don't affect how Latin text renders)."""
    styles = {}
    for styles_root in (root.find(q("office", "styles")), root.find(q("office", "automatic-styles"))):
        if styles_root is None:
            continue
        for style_el in styles_root.findall(q("style", "style")):
            if style_el.get(q("style", "family")) != "text":
                continue
            name = style_el.get(q("style", "name"))
            props = style_el.find(q("style", "text-properties"))
            if name is None or props is None:
                continue
            styles[name] = {
                "bold": props.get(q("fo", "font-weight")) == "bold",
                "italic": props.get(q("fo", "font-style")) == "italic",
            }
    return styles


def build_list_styles(root):
    """Maps list style name -> True if ordered (numbered), False if bulleted,
    based on the first list level's style."""
    styles = {}
    for styles_root in (root.find(q("office", "styles")), root.find(q("office", "automatic-styles"))):
        if styles_root is None:
            continue
        for list_style_el in styles_root.findall(q("text", "list-style")):
            name = list_style_el.get(q("style", "name"))
            if name is None:
                continue
            ordered = list_style_el.find(q("text", "list-level-style-number")) is not None
            styles[name] = ordered
    return styles


MD_ESCAPE_RE = re.compile(r"([\\`*_\[\]])")


def escape_md(text):
    return MD_ESCAPE_RE.sub(r"\\\1", text)


def as_png_name(name):
    """Normalizes a filename's extension to ".png" (e.g. "foo.bmp" ->
    "foo.png"); left as-is if already ".png"."""
    root, ext = os.path.splitext(name)
    return name if ext.lower() == ".png" else root + ".png"


def save_as_png(source, dest_path):
    """Opens an image - from a filesystem path or raw bytes - and (re-)saves
    it as a losslessly compressed PNG at dest_path, regardless of its
    original format (e.g. BMP)."""
    image = Image.open(io.BytesIO(source)) if isinstance(source, (bytes, bytearray)) else Image.open(source)
    os.makedirs(os.path.dirname(dest_path), exist_ok=True)
    image.save(dest_path, format="PNG", optimize=True)


def wrap_style(text, bold, italic):
    """Wraps text in **/*/*** markers, keeping any leading/trailing
    whitespace outside the markers (required for valid Markdown emphasis)."""
    if not text or not text.strip() or not (bold or italic):
        return text
    lead = text[: len(text) - len(text.lstrip())]
    trail = text[len(text.rstrip()):]
    core = text.strip()
    if bold and italic:
        core = f"***{core}***"
    elif bold:
        core = f"**{core}**"
    else:
        core = f"*{core}*"
    return lead + core + trail


class Converter:
    def __init__(self, text_styles, list_styles, odt_dir):
        self.text_styles = text_styles
        self.list_styles = list_styles
        self.odt_dir = odt_dir
        self.skipped_shapes = 0
        self.image_count = 0
        self.internal_link_count = 0
        # basename -> resolved absolute source path, or None if not found,
        # for images that are linked (not embedded in the .odt) via a
        # relative path such as "../assets/foo.png".
        self.external_images = {}
        # Bookmark names seen since the last emitted block, and, once a
        # block is emitted, the list of bookmark names anchored inside it -
        # parallel to (same length/order as) what walk() yields, used to
        # figure out which output file each bookmark ends up in.
        self._pending_bookmarks = []
        self.blocks_bookmarks = []

    def register_bookmark(self, name):
        self._pending_bookmarks.append(name)

    def emit(self, block_text):
        self.blocks_bookmarks.append(self._pending_bookmarks)
        self._pending_bookmarks = []
        return block_text

    # ---- inline content (within a paragraph/heading/span) ----

    def render_inline(self, el, bold=False, italic=False):
        parts = []
        if el.text:
            parts.append(escape_md(el.text))
        for child in el:
            parts.append(self.render_inline_child(child, bold, italic))
            if child.tail:
                parts.append(escape_md(child.tail))
        return "".join(parts)

    def render_inline_child(self, el, bold, italic):
        tag = localname(el.tag)
        if tag == "span":
            style = self.text_styles.get(get_style_name(el), {})
            b = bold or style.get("bold", False)
            i = italic or style.get("italic", False)
            return wrap_style(self.render_inline(el, b, i), b, i)
        if tag == "a":
            href = el.get(q("xlink", "href"), "")
            inner = self.render_inline(el, bold, italic)
            if href.startswith("#"):
                # Internal cross-reference (e.g. "see the RF System
                # section"): resolved to a real file path once we know
                # where its target bookmark landed - see resolve_links().
                self.internal_link_count += 1
                return f"{LINK_OPEN}{href[1:]}{LINK_SEP}{inner}{LINK_CLOSE}"
            return f"[{inner}]({href})" if href else inner
        if tag == "tab":
            return "\t"
        if tag == "line-break":
            return "  \n"
        if tag == "s":
            return " " * int(el.get(q("text", "c"), "1"))
        if tag == "frame":
            return self.render_frame(el) or ""
        if tag == "note":
            citation = el.find(f".//{q('text', 'note-citation')}")
            return f"[^{citation.text}]" if citation is not None and citation.text else ""
        if tag in ("bookmark-start", "bookmark"):
            name = el.get(q("text", "name"))
            if name:
                self.register_bookmark(name)
            return ""
        if tag in ("bookmark-end", "soft-page-break", "sequence",
                   "reference-mark-start", "reference-mark-end", "reference-mark"):
            return ""
        # Unknown inline wrapper: recurse so its text isn't silently dropped.
        return self.render_inline(el, bold, italic)

    # ---- images ----

    def render_frame(self, frame_el):
        image_el = frame_el.find(q("draw", "image"))
        if image_el is not None:
            href = image_el.get(q("xlink", "href"))
            if href:
                self.image_count += 1
                # Empty alt text: the .odt has no real caption for these,
                # only LibreOffice's auto-generated frame name (e.g. "Image6
                # Copy 1"), which is meaningless clutter, not a caption.
                alt = ""
                if href.startswith("Pictures/"):
                    # Embedded in the .odt itself; (re-)saved as PNG by convert().
                    return f"![{alt}]({ASSETS_PLACEHOLDER}/{as_png_name(href)})"
                # Linked, not embedded: resolve against the .odt's directory,
                # falling back to "<odt_dir>/assets/<basename>" (this repo's
                # convention) since such links are saved relative to wherever
                # the .odt lived when the image was inserted, which may no
                # longer be its current location. Looked up on disk under its
                # original name/extension, but referenced (and saved) as PNG.
                basename = os.path.basename(href)
                out_basename = as_png_name(basename)
                if out_basename not in self.external_images:
                    candidate = os.path.normpath(os.path.join(self.odt_dir, href))
                    if not os.path.isfile(candidate):
                        candidate = os.path.join(self.odt_dir, "assets", basename)
                    self.external_images[out_basename] = candidate if os.path.isfile(candidate) else None
                return f"![{alt}]({ASSETS_PLACEHOLDER}/{out_basename})"
        # Not an image (e.g. a text box): keep any text content it carries.
        # Note: bookmarks inside such a nested frame can end up misattributed
        # to the wrong output block, since this collapses walk()'s own
        # separately-emitted sub-blocks into one - harmless here as this
        # manual has no non-image frames, but a caveat for other documents.
        inner_blocks = list(self.walk(frame_el))
        return "\n\n".join(inner_blocks) if inner_blocks else None

    # ---- lists ----

    def render_list(self, list_el, depth=0):
        ordered = self.list_styles.get(get_style_name(list_el), False)
        indent = "  " * depth
        item_blocks = []
        index = 1
        for item in list_el.findall(q("text", "list-item")):
            lines = []
            first_para_done = False
            for child in item:
                tag = localname(child.tag)
                if tag == "p":
                    text = self.render_inline(child)
                    if not first_para_done:
                        bullet = f"{index}." if ordered else "-"
                        lines.append(f"{indent}{bullet} {text}")
                        first_para_done = True
                    elif text.strip():
                        lines.append(f"{indent}  {text}")
                elif tag == "list":
                    lines.append(self.render_list(child, depth + 1))
                elif tag == "frame":
                    block = self.render_frame(child)
                    if block:
                        lines.append(f"{indent}  {block}")
            if lines:
                item_blocks.append("\n".join(lines))
            index += 1
        return "\n".join(item_blocks)

    # ---- tables ----

    def render_table(self, table_el):
        rows = []
        for row in table_el.findall(q("table", "table-row")):
            cells = []
            for cell in row.findall(q("table", "table-cell")):
                cell_lines = []
                for child in cell:
                    tag = localname(child.tag)
                    if tag == "p":
                        text = self.render_inline(child)
                        if text.strip():
                            cell_lines.append(text)
                    elif tag == "list":
                        cell_lines.append(self.render_list(child).replace("\n", "<br>"))
                cell_text = "<br>".join(cell_lines).replace("|", "\\|")
                repeat = int(cell.get(q("table", "number-columns-repeated"), "1"))
                cells.extend([cell_text] * repeat)
            rows.append(cells)

        if not rows:
            return ""
        col_count = max(len(r) for r in rows)
        pad = lambda r: r + [""] * (col_count - len(r))
        lines = ["| " + " | ".join(pad(rows[0])) + " |", "| " + " | ".join(["---"] * col_count) + " |"]
        for r in rows[1:]:
            lines.append("| " + " | ".join(pad(r)) + " |")
        return "\n".join(lines)

    # ---- block-level walk ----

    def walk(self, el):
        for child in el:
            tag = localname(child.tag)
            if tag == "h":
                level = min(int(child.get(q("text", "outline-level"), "1")), 6)
                text = self.render_inline(child)
                if text.strip():
                    yield self.emit(f"{'#' * level} {text}")
            elif tag == "p":
                text = self.render_inline(child)
                if text.strip():
                    yield self.emit(text)
            elif tag == "list":
                block = self.render_list(child)
                if block:
                    yield self.emit(block)
            elif tag == "table":
                block = self.render_table(child)
                if block:
                    yield self.emit(block)
            elif tag == "frame":
                block = self.render_frame(child)
                if block:
                    yield self.emit(block)
            elif tag in ("table-of-content", "sequence-decls"):
                continue  # skip: duplicates headings / not content
            elif tag == "custom-shape":
                self.skipped_shapes += 1
                continue  # decorative page shapes, not manual content
            else:
                # Transparent container (e.g. text:section): descend into it.
                yield from self.walk(child)


def strip_link_markers(text):
    """Unwraps LINK_OPEN/.../LINK_CLOSE markers to their inner text, for use
    in titles/slugs (headings essentially never contain a real hyperlink,
    but this keeps things robust if one ever does)."""
    return LINK_RE.sub(lambda m: m.group(2), text)


def slugify(heading_block):
    """Turns a "# Some **Title**" block into a filename-safe slug."""
    text = strip_link_markers(heading_block)
    text = re.sub(r"^#+\s*", "", text)
    text = re.sub(r"[*_`\[\]]", "", text).replace("\\", "")
    text = re.sub(r"[^a-z0-9]+", "-", text.lower()).strip("-")
    return text or "chapter"


def unique_slug(base, used):
    """Disambiguates a slug against a set of already-used ones (e.g. two
    different chapters both having an "Overview" ## section)."""
    slug = base
    n = 2
    while slug in used:
        slug = f"{base}-{n}"
        n += 1
    used.add(slug)
    return slug


def split_into_chapters(items):
    """Splits a flat list of (block_text, bookmark_names) at each H1 heading
    ("# ..."), one chapter per heading. Returns (preamble_items,
    [(title, chapter_items), ...])."""
    preamble = []
    chapters = []
    current = None
    for item in items:
        block = item[0]
        if block.startswith("# ") and not block.startswith("##"):
            current = [item]
            chapters.append((block[2:].strip(), current))
        elif current is None:
            preamble.append(item)
        else:
            current.append(item)
    return preamble, chapters


def split_into_sections(chapter_items):
    """Given one chapter's items (starting with its H1 heading), splits the
    remainder at each H2 heading ("## ..."). Returns (intro_items, which
    starts with the H1 heading, [(subtitle, section_items), ...])."""
    intro = [chapter_items[0]]
    sections = []
    current = None
    for item in chapter_items[1:]:
        block = item[0]
        if block.startswith("## ") and not block.startswith("###"):
            current = [item]
            sections.append((block[3:].strip(), current))
        elif current is None:
            intro.append(item)
        else:
            current.append(item)
    return intro, sections


HEADING_RE = re.compile(r"^(#+)(\s)")


def shift_headings(items, by):
    """Shifts every heading block's level by `by` (negative promotes, e.g.
    ## -> #), clamped to at least H1. Used so a section file - which starts
    with its own ## heading - gets that as a proper H1 page title once it's
    split out into its own file, with anything nested under it shifting up
    to match."""
    if not by:
        return items
    shifted = []
    for text, bookmarks in items:
        m = HEADING_RE.match(text)
        if m:
            level = max(1, len(m.group(1)) + by)
            text = "#" * level + text[len(m.group(1)):]
        shifted.append((text, bookmarks))
    return shifted


def resolve_links(text, bookmark_target, unresolved, depth=0):
    """Replaces LINK_OPEN/.../LINK_CLOSE markers with real Markdown links,
    pointing wherever their target bookmark ended up. `bookmark_target`
    values are stored relative to output_dir; `depth` (how many directory
    levels below output_dir the file being written lives in) is used to
    convert that into a path relative to this file. A target that was never
    found anywhere is left as a same-file "#name" anchor (dead, same as it
    already was pre-split) and recorded in `unresolved`."""
    prefix = "../" * depth
    def repl(m):
        name, inner = m.group(1), m.group(2)
        target = bookmark_target.get(name)
        if target is None:
            unresolved.add(name)
            return f"[{inner}](#{name})"
        return f"[{inner}]({prefix}{target})"
    return LINK_RE.sub(repl, text)


def convert(odt_path, output_dir, split_chapters=False, summary=False):
    odt_dir = os.path.dirname(os.path.abspath(odt_path))
    with zipfile.ZipFile(odt_path) as archive:
        content_xml = archive.read("content.xml")
        root = ET.fromstring(content_xml)

        text_styles = build_text_styles(root)
        list_styles = build_list_styles(root)
        body = root.find(f"{q('office', 'body')}/{q('office', 'text')}")
        if body is None:
            raise RuntimeError("content.xml has no office:body/office:text")

        converter = Converter(text_styles, list_styles, odt_dir)
        # Strip each block: a stray leading tab/space (e.g. layout spacing
        # before an inline image) would otherwise read as a Markdown code
        # block and break rendering. walk() only ever yields non-empty
        # blocks, so this list stays index-aligned with converter.blocks_bookmarks.
        blocks = [b.strip() for b in converter.walk(body)]
        items = list(zip(blocks, converter.blocks_bookmarks))

        os.makedirs(output_dir, exist_ok=True)
        base_name = os.path.splitext(os.path.basename(odt_path))[0]
        written = []
        unresolved = set()

        if split_chapters:
            preamble_items, chapter_groups = split_into_chapters(items)
            bookmark_target = {}

            def register(path, items_list):
                for _, names in items_list:
                    for name in names:
                        bookmark_target[name] = path

            register("index.md", preamble_items)

            # Pass 1: decide slugs/paths and record every bookmark's target
            # file, without writing anything yet - a link may point at a
            # bookmark discovered later in the document.
            used_chapter_slugs = set()
            chapter_plan = []
            for title_raw, chapter_items in chapter_groups:
                chapter_slug = unique_slug(slugify(chapter_items[0][0]), used_chapter_slugs)
                intro_items, section_groups = split_into_sections(chapter_items)
                chapter_index_rel = f"{chapter_slug}/index.md"
                register(chapter_index_rel, intro_items)

                used_section_slugs = set()
                sections_plan = []
                for subtitle_raw, section_items in section_groups:
                    section_slug = unique_slug(slugify(section_items[0][0]), used_section_slugs)
                    section_rel = f"{chapter_slug}/{section_slug}.md"
                    register(section_rel, section_items)
                    sections_plan.append((strip_link_markers(subtitle_raw), section_rel, section_items))

                chapter_plan.append((strip_link_markers(title_raw), chapter_index_rel, intro_items, sections_plan))

            # Pass 2: now that every bookmark's target file is known, render
            # and write each file, resolving internal links as we go.
            def write_file(path, items_list, depth):
                os.makedirs(os.path.dirname(path), exist_ok=True)
                text = "\n\n".join(b for b, _ in items_list) + "\n"
                text = resolve_links(text, bookmark_target, unresolved, depth=depth)
                text = text.replace(ASSETS_PLACEHOLDER, ("../" * depth) + ASSETS_DIR_NAME)
                with open(path, "w", encoding="utf-8") as f:
                    f.write(text)
                written.append(path)

            toc_entries = []
            summary_entries = []
            for title, chapter_index_rel, intro_items, sections_plan in chapter_plan:
                write_file(os.path.join(output_dir, *chapter_index_rel.split("/")), intro_items, depth=1)
                toc_entries.append(f"- [{title}]({chapter_index_rel})")
                summary_entries.append(f"* [{title}]({chapter_index_rel})")
                for subtitle, section_rel, section_items in sections_plan:
                    write_file(os.path.join(output_dir, *section_rel.split("/")),
                               shift_headings(section_items, -1), depth=1)
                    toc_entries.append(f"  - [{subtitle}]({section_rel})")
                    summary_entries.append(f"    * [{subtitle}]({section_rel})")

            index_items = list(preamble_items)
            if not summary:
                # No SUMMARY.md to carry navigation: keep an inline TOC so
                # index.md stays self-navigable on its own.
                index_items += [("## Table of Contents", []), ("\n".join(toc_entries), [])]
            write_file(os.path.join(output_dir, "index.md"), index_items, depth=0)

            if summary:
                summary_path = os.path.join(output_dir, "SUMMARY.md")
                summary_text = "\n".join(["# Documentation", "", "* [Home](index.md)"] + summary_entries) + "\n"
                with open(summary_path, "w", encoding="utf-8") as f:
                    f.write(summary_text)
                written.append(summary_path)
        else:
            # Every internal link's target lives in this same single file.
            bookmark_target = {name: base_name + ".md" for _, names in items for name in names}
            markdown = "\n\n".join(blocks) + "\n"
            markdown = resolve_links(markdown, bookmark_target, unresolved)
            markdown = markdown.replace(ASSETS_PLACEHOLDER, ASSETS_DIR_NAME)
            md_path = os.path.join(output_dir, base_name + ".md")
            with open(md_path, "w", encoding="utf-8") as f:
                f.write(markdown)
            written.append(md_path)

        assets_root = os.path.join(output_dir, ASSETS_DIR_NAME)
        extracted = 0
        converted = 0
        for info in archive.infolist():
            if info.filename.startswith("Pictures/") and not info.is_dir():
                dest_name = as_png_name(info.filename)
                save_as_png(archive.read(info.filename), os.path.join(assets_root, dest_name))
                extracted += 1
                if dest_name != info.filename:
                    converted += 1

    missing = []
    for out_basename, source in converter.external_images.items():
        if source is None:
            missing.append(out_basename)
            continue
        save_as_png(source, os.path.join(assets_root, out_basename))
        if not source.lower().endswith(".png"):
            converted += 1

    if split_chapters:
        page_count = len(written) - (2 if summary else 1)  # exclude index.md and, if present, SUMMARY.md
        print(f"Wrote index.md + {page_count} chapter/section file(s) to {output_dir}")
        if summary:
            print(f"Wrote {written[-1]}")
    else:
        print(f"Wrote {written[0]}")
    print(f"Extracted {extracted} embedded asset(s) to {assets_root}")
    if converter.external_images:
        print(f"Copied {len(converter.external_images) - len(missing)} linked asset(s) "
              f"from {odt_dir} into {assets_root}")
    if converted:
        print(f"Converted {converted} non-PNG image(s) (e.g. BMP) to losslessly compressed PNG")
    print(f"Referenced {converter.image_count} image(s) in the Markdown")
    if converter.skipped_shapes:
        print(f"Skipped {converter.skipped_shapes} decorative shape(s) (draw:custom-shape)")
    if converter.internal_link_count:
        resolved = converter.internal_link_count - len(unresolved)
        print(f"Resolved {resolved}/{converter.internal_link_count} internal cross-reference link(s)")
    if missing:
        print(f"WARNING: {len(missing)} linked image(s) could not be found on disk "
              f"and are referenced but missing from {assets_root}:")
        for basename in missing:
            print(f"  - {basename}")
    if unresolved:
        print(f"WARNING: {len(unresolved)} internal cross-reference link(s) point at a bookmark "
              f"that was never found, left as a dead #anchor:")
        for name in sorted(unresolved):
            print(f"  - {name}")


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("odt_path", help="path to the .odt file to convert")
    parser.add_argument("--output-dir", help="where to write the .md file(s) and assets/ folder "
                                              "(default: next to the .odt file)")
    parser.add_argument("--split-chapters", action="store_true",
                         help="split output into one folder per top-level (#) heading, with an index.md "
                              "(intro text) plus one .md file per second-level (##) heading inside it, "
                              "instead of one big .md file")
    parser.add_argument("--summary", action="store_true",
                         help="also write a SUMMARY.md (GitBook-style page list, see e.g. french/SUMMARY.md) "
                              "referencing index.md and every chapter/section file; requires --split-chapters")
    args = parser.parse_args()
    if args.summary and not args.split_chapters:
        parser.error("--summary requires --split-chapters")

    output_dir = args.output_dir or os.path.dirname(os.path.abspath(args.odt_path))
    convert(args.odt_path, output_dir, split_chapters=args.split_chapters, summary=args.summary)


if __name__ == "__main__":
    main()
