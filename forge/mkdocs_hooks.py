"""mkdocs build hooks (wired in via mkdocs.yml: hooks:).

Fixes the per-page "Edit this page" link.

mkdocs-static-i18n serves each language from docs/<locale>/, which is a link
to that language's real source folder (see forge/mkdocs.py). So a page's
src_uri is e.g. "fr/model-setup/mixes.md" and mkdocs's own edit_url ends up
pointing at github.com/.../edit/26.1/fr/model-setup/mixes.md - a path that
doesn't exist in the repo. This rewrites it to the real file
(french/model-setup/mixes.md), and drops the link entirely for languages
whose Markdown is generated rather than hand-written.
"""

# docs/<locale> -> the real source folder in the repo.
# None means "generated, not meant to be edited on GitHub" (english/markdown/
# is produced by forge/odt_to_markdown.py from the .odt). An unknown locale
# also gets no link, rather than a wrong one.
SOURCE_FOLDER = {
    "fr": "french",
    "en": None,
}

# Branch the docs site is built and deployed from (see .github/workflows/mkdocs.yml).
EDIT_BRANCH = "26.1"


def on_page_context(context, page, config, nav):
    locale, _, rel = page.file.src_uri.partition("/")
    folder = SOURCE_FOLDER.get(locale)
    if folder and rel and config.repo_url:
        page.edit_url = f"{config.repo_url.rstrip('/')}/edit/{EDIT_BRANCH}/{folder}/{rel}"
    else:
        page.edit_url = None
    return context
