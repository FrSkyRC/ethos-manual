#!/bin/python3

"""Generates a SUMMARY.nav.md next to a SUMMARY.md, for mkdocs-literate-nav.

SUMMARY.md also feeds the PDF pipeline (forge/pdf.py), which finds pages via
a regex and simply ignores any line that isn't a "* [title](link)" bullet -
including "disabled" entries commented out as raw HTML, e.g.:
    <!-- * [Glasses](model-setup/glasses.md) -->
mkdocs-literate-nav instead parses SUMMARY.md as actual Markdown, where such
a one-line HTML comment gets absorbed into the *previous* list item instead
of being ignored, breaking its "one link per list item" parser.

Rather than rewrite SUMMARY.md itself (losing the "page planned but not
written yet" breadcrumb it documents), this script copies it to
SUMMARY.nav.md with those commented-out lines dropped - safe for
mkdocs-literate-nav to parse. Re-run after editing SUMMARY.md.

Note: SUMMARY.md nests bullets 4 spaces per level, not GitBook's usual 2 -
Python-Markdown's list parser (which mkdocs-literate-nav parses
SUMMARY.nav.md through) only recognizes a sub-list as nested starting at 4;
at 2, every bullet is read as a sibling of the top-level items, and the left
nav renders completely flat.

Example:
    python forge/mkdocs_nav.py french/SUMMARY.md
"""

import argparse
import os


def generate(summary_path):
    with open(summary_path, encoding="utf-8") as f:
        lines = f.readlines()

    kept = [line for line in lines if not line.strip().startswith("<!--")]

    nav_path = os.path.join(os.path.dirname(summary_path), "SUMMARY.nav.md")
    with open(nav_path, "w", encoding="utf-8") as f:
        f.writelines(kept)

    dropped = len(lines) - len(kept)
    print(f"Wrote {nav_path} ({dropped} commented-out line(s) dropped)")


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("summary_path", help="path to a SUMMARY.md, e.g. french/SUMMARY.md")
    args = parser.parse_args()
    generate(args.summary_path)


if __name__ == "__main__":
    main()
