#!/bin/python3

import argparse
import os
import re
import subprocess


COMMON_FORGE_DIR = os.path.dirname(os.path.abspath(__file__))


def build_book_md():
        with open("book.md", "w", encoding="utf-8") as book:
            styles_md = "./forge/pdf/styles.md"
            if not os.path.exists(styles_md):
                styles_md = os.path.join(COMMON_FORGE_DIR, "pdf/styles.md")
            with open(styles_md, encoding="utf-8") as styles:
                book.write(styles.read())
            with open("SUMMARY.md", encoding="utf-8") as summary:
                for line in summary.readlines():
                    match = re.search(r"^(\s*)\* \[([^\]]+)\]\(([^)]+)\)$", line)
                    if match:
                        indent, _, link = match.groups()
                        with open(link, encoding="utf-8") as page:
                            content = page.read()
                            content = re.sub(r'^---\s*\n.*?\n---\s*\n?', '', content, count=1, flags=re.MULTILINE | re.DOTALL) # remove the MD front matter
                            content = re.sub(r'^(#{1,6}) ', r'\1' + '#' * (len(indent) // 2) + ' ', content, flags=re.MULTILINE) # add heading indentation
                            content = re.sub(r'\s*\{:\s*#[^}]+\}', '', content, flags=re.MULTILINE) # remove anchors
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
    parser.add_argument("--output", default="FR.Manuel_Ethos.pdf", help="path of the generated PDF (default: %(default)s)")
    args = parser.parse_args()

    build_book_md()

    subprocess.run([
        "pandoc", "book.md",
        "--standalone",
        "--from", "markdown+smart",
        "--to", "latex-smart",
        "--number-sections",
        "--highlight-style", "tango",
        "--template", os.path.join(COMMON_FORGE_DIR, "pdf/template.latex"),
        "--lua-filter", os.path.join(COMMON_FORGE_DIR, "pdf/admonitions.lua"),
        "--lua-filter", os.path.join(COMMON_FORGE_DIR, "pdf/typography.lua"),
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

    os.replace("book.pdf", args.output)


if __name__ == "__main__":
    main()
