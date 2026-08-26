#!/bin/python3

"""Prepares the local environment for `mkdocs serve`/`build`: for every
known language with a SUMMARY.md - directly under its top-level folder
(e.g. french/SUMMARY.md) or under a markdown/ subfolder (e.g.
english/markdown/SUMMARY.md, as forge/odt_to_markdown.py --summary
produces) - (1) creates docs/<locale>, a link to wherever that SUMMARY.md
lives, so mkdocs.yml's docs_dir can be a proper child directory of the
config file, (2) regenerates SUMMARY.nav.md there, the file
mkdocs-literate-nav actually reads, and (3) rewrites mkdocs.yml's generated
blocks (extra_css, exclude_docs, nav, plugins.i18n.languages) to match
whichever languages are actually set up. Re-run after editing a SUMMARY.md,
or after adding/removing a language.

--- Why docs/<locale>, not docs/<language folder name> ---
mkdocs.yml uses the mkdocs-static-i18n plugin (docs_structure: folder) to
build every language into one site with a language switcher, keeping each
page's sidebar nav to just its own language. That plugin detects a file's
language from the *name* of its top-level folder under docs_dir, which it
requires to be an actual locale code (e.g. "fr", not "french") - see
LANGUAGES below for the mapping.

--- Why docs/<locale> is a link, not a copy ---
mkdocs refuses a docs_dir that's the same directory as mkdocs.yml itself, so
it can't just point straight at a top-level language folder living next to
mkdocs.yml. Rather than moving/duplicating that folder's content under a
"docs/" parent, this links it there instead - docs_dir traverses it
transparently (mkdocs walks docs_dir with followlinks=True), and the actual
files stay exactly where they are. On Windows this is an NTFS junction
(mklink /J) - unlike a real symlink, it needs no admin rights or Developer
Mode. On macOS/Linux it's a normal symlink. Either way, docs/ is a local,
gitignored convenience: not portable across OSes, not meant to be committed.

--- Why SUMMARY.nav.md, not SUMMARY.md directly ---
SUMMARY.md also feeds the PDF pipeline (forge/pdf.py), which finds pages via
a regex and simply ignores any line that isn't a "* [title](link)" bullet -
including "disabled" entries commented out as raw HTML, e.g.:
    <!-- * [Glasses](model-setup/glasses.md) -->
mkdocs-literate-nav instead parses SUMMARY.md as actual Markdown, where such
a one-line HTML comment gets absorbed into the *previous* list item instead
of being ignored, breaking its "one link per list item" parser. Rather than
rewrite SUMMARY.md itself (losing the "page planned but not written yet"
breadcrumb it documents), SUMMARY.nav.md is a copy with those commented-out
lines dropped - safe for mkdocs-literate-nav to parse.

Note: SUMMARY.md nests bullets 4 spaces per level, not GitBook's usual 2 -
Python-Markdown's list parser (which mkdocs-literate-nav parses
SUMMARY.nav.md through) only recognizes a sub-list as nested starting at 4;
at 2, every bullet is read as a sibling of the top-level items, and the left
nav renders completely flat.

--- Why mkdocs.yml is only partly generated ---
Only the 4 blocks bracketed by "# BEGIN/END GENERATED: <NAME>" markers in
mkdocs.yml are rewritten (matching whichever indentation the marker itself
already has); everything else - theme, markdown_extensions, the explanatory
comments - is left exactly as it is. This keeps those blocks in sync with
LANGUAGES/docs/ without turning the whole file into a black box.

Example:
    python forge/mkdocs.py          # every language with a SUMMARY.md
    python forge/mkdocs.py french   # just one (mkdocs.yml still reflects
                                     # every language that's set up, not just this one)
"""

import argparse
import os
import re
import subprocess
import sys

REPO_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DOCS_DIR = os.path.join(REPO_ROOT, "docs")
MKDOCS_YML = os.path.join(REPO_ROOT, "mkdocs.yml")

# Top-level language folder name -> its metadata. `locale` is required by
# mkdocs-static-i18n's docs_structure: folder (see mkdocs.yml) and must be
# an ISO-639-1 code; `name` is the label shown in the language switcher;
# `default` (at most one) is the language built at the site root instead of
# under /<locale>/; `site_name`/`site_description` override the top-level
# ones from mkdocs.yml for that language, if given. Add an entry here when a
# new language gets its own SUMMARY.md - no other change needed, re-running
# this script picks it up in docs/ *and* in mkdocs.yml.
LANGUAGES = {
    "french": {
        "locale": "fr",
        "name": "Français",
        "default": True,
        "site_name": "Manuel Ethos",
        "site_description": "Documentation utilisateur de l'OS Ethos (FrSky)",
    },
    "english": {
        "locale": "en",
        "name": "English",
        "site_name": "Ethos Manual",
        "site_description": "Ethos OS user documentation (FrSky)",
    },
    "german": {"locale": "de", "name": "Deutsch"},
    "italian": {"locale": "it", "name": "Italiano"},
    "japanese": {"locale": "ja", "name": "日本語"},
    "spanish": {"locale": "es", "name": "Español"},
}

# Candidate subpaths (relative to a language's top-level folder) that might
# hold its own SUMMARY.md, checked in this order.
DOCS_ROOT_CANDIDATES = ("", "markdown")


def find_docs_root(name):
    """Returns the directory (relative to the repo root) that actually holds
    <name>'s SUMMARY.md, or None if it doesn't have one."""
    for candidate in DOCS_ROOT_CANDIDATES:
        docs_root = os.path.join(name, candidate) if candidate else name
        if os.path.isfile(os.path.join(REPO_ROOT, docs_root, "SUMMARY.md")):
            return docs_root
    return None


def link_locale(locale, docs_root):
    """Creates docs/<locale> -> <docs_root>/ if missing."""
    link = os.path.join(DOCS_DIR, locale)
    if not os.path.exists(link):
        os.makedirs(DOCS_DIR, exist_ok=True)
        target = os.path.join(REPO_ROOT, docs_root)
        if sys.platform == "win32":
            subprocess.run(["cmd", "/c", "mklink", "/J", link, target], check=True, capture_output=True)
        else:
            os.symlink(target, link, target_is_directory=True)
        print(f"Linked docs/{locale} -> {docs_root}/")


def generate_nav(summary_path):
    with open(summary_path, encoding="utf-8") as f:
        lines = f.readlines()

    kept = [line for line in lines if not line.strip().startswith("<!--")]

    nav_path = os.path.join(os.path.dirname(summary_path), "SUMMARY.nav.md")
    with open(nav_path, "w", encoding="utf-8") as f:
        f.writelines(kept)

    dropped = len(lines) - len(kept)
    print(f"Wrote {nav_path} ({dropped} commented-out line(s) dropped)")


def setup_language(name):
    meta = LANGUAGES.get(name)
    if meta is None:
        return False
    docs_root = find_docs_root(name)
    if docs_root is None:
        return False
    link_locale(meta["locale"], docs_root)
    generate_nav(os.path.join(REPO_ROOT, docs_root, "SUMMARY.md"))
    return True


def discovered_languages():
    """Every LANGUAGES entry that currently has a SUMMARY.md, as
    (name, meta, docs_root) tuples, in LANGUAGES' own order."""
    result = []
    for name, meta in LANGUAGES.items():
        docs_root = find_docs_root(name)
        if docs_root is not None:
            result.append((name, meta, docs_root))
    return result


def replace_block(content, marker, lines):
    """Replaces the content between "# BEGIN GENERATED: <marker>" and
    "# END GENERATED: <marker>" in `content` with `lines`, each prefixed
    with the same leading whitespace as the marker itself (lines may add
    their own extra indentation on top of that, e.g. "  name: ...")."""
    begin, end = f"# BEGIN GENERATED: {marker}", f"# END GENERATED: {marker}"
    pattern = re.compile(rf"^([ \t]*){re.escape(begin)}\n.*?^[ \t]*{re.escape(end)}\n", re.M | re.S)

    def repl(m):
        indent = m.group(1)
        body = "".join(f"{indent}{line}\n" for line in lines)
        return f"{indent}{begin}\n{body}{indent}{end}\n"

    new_content, count = pattern.subn(repl, content)
    if count != 1:
        raise RuntimeError(f"expected exactly one GENERATED:{marker} block in mkdocs.yml, found {count}")
    return new_content


def update_mkdocs_yml(languages):
    with open(MKDOCS_YML, encoding="utf-8") as f:
        content = f.read()

    extra_css, exclude_docs, nav, lang_lines = [], [], [], []
    for name, meta, docs_root in languages:
        locale = meta["locale"]
        if os.path.isfile(os.path.join(REPO_ROOT, docs_root, "extra.css")):
            extra_css.append(f"- {locale}/extra.css")
        exclude_docs += [f"{locale}/forge/", f"{locale}/SUMMARY.md", f"{locale}/SUMMARY.nav.md"]
        nav.append(f"- {locale.capitalize()}: {locale}/")

        lang_lines.append(f"- locale: {locale}")
        lang_lines.append(f"  name: {meta['name']}")
        lang_lines.append("  build: true")
        if meta.get("default"):
            lang_lines.append("  default: true")
        if "site_name" in meta:
            lang_lines.append(f"  site_name: {meta['site_name']}")
        if "site_description" in meta:
            lang_lines.append(f"  site_description: {meta['site_description']}")

    content = replace_block(content, "EXTRA_CSS", extra_css)
    content = replace_block(content, "EXCLUDE_DOCS", exclude_docs)
    content = replace_block(content, "NAV", nav)
    content = replace_block(content, "LANGUAGES", lang_lines)

    with open(MKDOCS_YML, "w", encoding="utf-8") as f:
        f.write(content)
    print(f"Updated mkdocs.yml for: {', '.join(meta['locale'] for _, meta, _ in languages)}")


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("language", nargs="?", help="only set up this one language folder (default: all of them)")
    args = parser.parse_args()

    if args.language:
        if args.language not in LANGUAGES:
            parser.error(f"{args.language!r} isn't in LANGUAGES - add it first")
        if not setup_language(args.language):
            parser.error(f"no SUMMARY.md found under {args.language}/")
    else:
        found = [name for name in LANGUAGES if setup_language(name)]
        if not found:
            print("No language folder with a SUMMARY.md found - nothing to set up.")

    languages = discovered_languages()
    if languages:
        update_mkdocs_yml(languages)


if __name__ == "__main__":
    main()
