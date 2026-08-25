#!/bin/python3

import argparse
import os
import re
import subprocess


COMMON_FORGE_DIR = os.path.dirname(os.path.abspath(__file__))


def get_forge_file(filename):
    result = "./forge/pdf/" + filename
    if os.path.exists(result):
        return result
    return os.path.join(COMMON_FORGE_DIR, "pdf", filename)


def page_anchor_id(link):
    """Stable pandoc/LaTeX header id for a whole page, derived from its
    SUMMARY.md path (e.g. "model-setup/rf-system.md" -> "page-model-setup-rf-system").
    Used as a cross-page link's target when it points at a page as a whole,
    rather than at one of its {: #anchor}-tagged headings."""
    stem = re.sub(r'\.md$', '', link)
    return "page-" + re.sub(r'[^a-zA-Z0-9]+', '-', stem).strip('-').lower()


def build_book_md():
        with open("SUMMARY.md", encoding="utf-8") as summary:
            summary_lines = summary.readlines()
        pages = [m.group(3) for line in summary_lines
                 if (m := re.search(r"^(\s*)\* \[([^\]]+)\]\(([^)]+)\)$", line))]

        # All the source pages get concatenated into one book.md, so a link
        # from one page to another (by file path, e.g. "../model-setup/rf-system.md",
        # optionally with a "#some-anchor" suffix) needs to become an
        # internal PDF cross-reference instead of a dead link to a markdown
        # file path that doesn't exist as such once compiled. We do this in
        # two passes: first assign every page a stable anchor id (pass 1),
        # then rewrite every page's links against that map (pass 2).
        page_ids = {link: page_anchor_id(link) for link in pages}
        md_link_re = re.compile(r'\]\(((?:\.\./)*[^()\s]+\.md)(#[^)\s]*)?\)')

        def rewrite_links(content, page_dir):
            def repl(m):
                href, fragment = m.group(1), m.group(2)
                if fragment:
                    # The fragment matches a {: #id} heading tag, which is
                    # now a pandoc-native {#id} unique across the whole
                    # concatenated book (see the anchor conversion below) -
                    # so the now-meaningless page path can just be dropped.
                    return f"]({fragment})"
                target = page_ids.get(os.path.normpath(os.path.join(page_dir, href)).replace(os.sep, "/"))
                return f"](#{target})" if target else m.group(0)
            return md_link_re.sub(repl, content)

        with open("book.md", "w", encoding="utf-8") as book:
            with open(get_forge_file("styles.md"), encoding="utf-8") as styles:
                book.write(styles.read())
            for line in summary_lines:
                match = re.search(r"^(\s*)\* \[([^\]]+)\]\(([^)]+)\)$", line)
                if match:
                    indent, _, link = match.groups()
                    with open(link, encoding="utf-8") as page:
                        content = page.read()
                        content = re.sub(r'^---\s*\n.*?\n---\s*\n?', '', content, count=1, flags=re.MULTILINE | re.DOTALL) # remove the MD front matter
                        content = re.sub(r'\{:\s*#([^}]+?)\s*\}', r'{#\1}', content) # kramdown {: #id} -> pandoc-native {#id}, so it becomes a real, linkable header id instead of being silently dropped
                        first_heading = re.search(r'^#{1,6} .+$', content, flags=re.MULTILINE)
                        if first_heading and '{#' not in first_heading.group(0):
                            # This page's own top heading has no explicit id: give
                            # it its page_ids[link] one, so links to this page as a
                            # whole (not to one specific #anchor within it) resolve.
                            content = content[:first_heading.end()] + f' {{#{page_ids[link]}}}' + content[first_heading.end():]
                        content = rewrite_links(content, os.path.dirname(link))
                        content = re.sub(r'^(#{1,6}) ', r'\1' + '#' * (len(indent) // 4) + ' ', content, flags=re.MULTILINE) # add heading indentation
                        content = content.replace("../assets/", "./assets/")
                        content = content.replace("../screenshots/", "./screenshots/")
                        book.write(content)
                        if content[-1] != "\n":
                            book.write("\n")
                        if content[-2] != "\n":
                            book.write("\n")


def replace_missing_images(tex_path):
    """Pandoc's --to pdf path silently swaps missing images for their alt
    text; going through an intermediate .tex file loses that safety net, so
    we redo it here to avoid a hard dvipdfmx crash on a missing asset."""
    with open(tex_path, encoding="utf-8") as f:
        content = f.read()

    def replace_figure(match):
        block = match.group(0)
        img_match = re.search(r"\\includegraphics(?:\[[^\]]*\])?\{([^}]*)\}", block)
        if img_match and not os.path.exists(img_match.group(1)):
            print(f"Missing bitmap { img_match.group(1) }")
            caption_match = re.search(r"\\caption\{([^}]*)\}", block)
            caption = caption_match.group(1) if caption_match else img_match.group(1)
            return caption
        return block

    content = re.sub(r"\\begin\{figure\}.*?\\end\{figure\}", replace_figure, content, flags=re.S)

    def replace_inline(match):
        path = match.group(1)
        if not os.path.exists(path):
            return path
        return match.group(0)

    content = re.sub(r"\\includegraphics(?:\[[^\]]*\])?\{([^}]*)\}", replace_inline, content)

    with open(tex_path, "w", encoding="utf-8") as f:
        f.write(content)


def main():
    parser = argparse.ArgumentParser(description="Builds the PDF manual from SUMMARY.md via pandoc + xelatex.")
    parser.add_argument("--output", help="path of the generated PDF")
    args = parser.parse_args()

    build_book_md()

    subprocess.run([
        "pandoc", "book.md",
        "--standalone",
        "--from", "markdown+smart",
        "--to", "latex-smart",
        "--number-sections",
        "--highlight-style", "tango",
        "--template", get_forge_file("template.latex"),
        "--lua-filter", get_forge_file("admonitions.lua"),
        "--lua-filter", get_forge_file("typography.lua"),
        "--output", "book.tex",
    ], check=True)

    replace_missing_images("book.tex")

    for _ in range(3):
        subprocess.run([
            "xelatex",
            "-interaction=nonstopmode",
            "-halt-on-error",
            "book.tex",
        ], check=True)

    if args.output:
        os.replace("book.pdf", args.output)


if __name__ == "__main__":
    main()
