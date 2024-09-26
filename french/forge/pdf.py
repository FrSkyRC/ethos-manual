#!/bin/python3

import os
import re


def main():
    with open("book.md", "w") as book:
        with open("styles.md") as styles:
            book.write(styles.read())
        with open("SUMMARY.md") as summary:
            for line in summary.readlines():
                match = re.search(r"\[.*\]\((.*\.md)\)", line)
                if match:
                    path = match.group(1)
                    with open(path) as page:
                        content = page.read()
                        content = content.replace("../assets/", "./assets/")
                        book.write(content)
                        if content[-1] != "\n":
                            book.write("\n")
                        if content[-2] != "\n":
                            book.write("\n")

    os.system('pandoc book.md \
              --standalone \
              --from markdown+smart \
              --to latex \
              --to pdf \
              --number-sections \
              --variable documentclass=scrreprt \
              --pdf-engine xelatex \
              --output ethos-french-manual.pdf')


if __name__ == "__main__":
    main()
