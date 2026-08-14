#!/bin/python3

import os
import re
import subprocess


def build_book_md():
    with open("book.md", "w", encoding="utf-8") as book:
        with open("styles.md", encoding="utf-8") as styles:
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
    build_book_md()

    subprocess.run([
        "pandoc", "book.md",
        "--standalone",
        "--from", "markdown+smart",
        # latex-smart (pas juste "latex") : le writer latex convertit par
        # défaut les tirets/apostrophes/guillemets typographiques en ASCII
        # + ligature TeX (ex. "---" au lieu de "—"), pour compter sur
        # Ligatures=TeX à la compilation. On a désactivé cette ligature
        # (bug d'espacement avec babel-french, voir forge/template.latex),
        # donc on demande au writer d'émettre directement les caractères
        # Unicode : plus simple et plus robuste que de la contourner.
        "--to", "latex-smart",
        "--number-sections",
        # Le style pygments (défaut de pandoc) ne définit aucun fond pour les
        # blocs de code. "tango" en propose un gris clair (RGB 248,248,248).
        "--highlight-style", "tango",
        "--template", "forge/template.latex",
        "--lua-filter", "forge/admonitions.lua",
        "--lua-filter", "forge/typography.lua",
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

    os.replace("book.pdf", "ethos-french-manual.pdf")


if __name__ == "__main__":
    main()
