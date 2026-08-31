---
title: English manual for Ethos 26.1
subtitle: Written by Lothar Thole
author: FrSky
version: "26.1.0-rev16"
lang: en
keywords: [FrSky, Ethos]
date: \today
papersize: a4

# Layout
documentclass: scrreprt
classoption:
- footsepline
- headsepline
- plainfootsepline
geometry:
- inner=1.5cm
- outer=1.5cm
- top=1.5cm
- bottom=2.5cm
hyperrefoptions:
- linktoc=all

# Styles
fontsize: 10pt
colorlinks: true
linkcolor: Blue
citecolor: MidnightBlue
urlcolor: MidnightBlue

links-as-notes: false
numbersections: true
# Pandoc/KOMA number down to \paragraph (level 5) by default; 1 limits that
# to chapter/section (levels 1-2), unnumbered beyond.
secnumdepth: 1

CJKmainfont: Microsoft YaHei
mainfont: Inter
# Inter doesn't expose OpenType "Language" metadata for French.
# without this, fontspec/babel emit "Language 'French' not available for font
# 'Inter'" (cosmetic, but Language=Default silences the warning).
mainfontoptions: Language=Default
#sansfont: Linux Biolinum O
monofont: Inconsolata
monofontoptions: Scale=.8

# Table of contents
toc: true
toc-depth: 1
lof: false
lot: false
tblPrefix: tab
lolTitle: List of Code Listings
listingtitle: Code Listing

# https://tex.stackexchange.com/questions/7546/how-to-get-latex-symbol-in-document/7549#7549
# Note: this block is wrapped in ```{=latex} to be passed through to LaTeX
# as-is. Without it, Pandoc reprocesses it as Markdown (escapes %,
# reinterprets quotes...) and breaks the preamble.
# See also forge/template.latex: custom Pandoc template (one line changed
# from the default template, to fix a ligature/apostrophe bug with
# babel-french - too early in the preamble to be fixable from this
# header-includes).
header-includes:
- |
  ```{=latex}
  \usepackage{lmodern}
  % A standalone image in a paragraph becomes a numbered figure (Pandoc,
  % implicit_figures) as soon as it has alt text; the number adds nothing
  % here, so we keep just the caption (if any).
  \usepackage{caption}
  \captionsetup{labelformat=empty,labelsep=none}
  % Smooths justification (reduces large gaps on lines that are hard to break)
  \usepackage{microtype}
  \usepackage{xspace}
  \usepackage{xltxtra}
  % Inter (mainfont) has no Hebrew glyphs; Arimo does. Used explicitly for
  % that case (see configuration-du-systeme/generalites.md).
  \newfontfamily{\hebrewfont}{Arimo}
  \let\tex\TeX
  \renewcommand{\TeX}{\tex\xspace}
  % markdown+smart turns straight quotes into English-style typographic
  % quotes (" "); we replace them with French guillemets (« »).
  \usepackage{newunicodechar}
  \newunicodechar{“}{«\,}
  \newunicodechar{”}{\,»}
  % markdown+smart also turns ' ' into typographic single quotes (‘ ’), used
  % in the text both as quote marks and as apostrophes. In this font setup
  % they drag an abnormally wide space along with them, so map both to the
  % plain ASCII apostrophe (not affected, and already the style used for the
  % closing mark everywhere in the manual).
  \newunicodechar{‘}{\textquotesingle}
  \newunicodechar{’}{\textquotesingle}
  % Material for MkDocs-style admonition boxes (colored title bar + tinted
  % background), one per type (!!! note "...", !!! warning "...", ...).
  % See forge/admonitions.lua for the conversion from this MkDocs format.
  \usepackage[most]{tcolorbox}
  \tcbset{
    admonitionstyle/.style={
      enhanced, unbreakable,
      coltitle=white, fonttitle=\bfseries,
      boxrule=0.5pt, arc=2pt, outer arc=2pt,
      left=6pt, right=6pt, top=4pt, bottom=4pt,
    }
  }
  \newtcolorbox{noteblock}[1]{admonitionstyle, colback=cyan!5!white, colframe=cyan!60!black, colbacktitle=cyan!60!black, title=#1}
  \newtcolorbox{warningblock}[1]{admonitionstyle, colback=orange!5!white, colframe=orange!70!black, colbacktitle=orange!70!black, title=#1}
  \newtcolorbox{tipblock}[1]{admonitionstyle, colback=green!5!white, colframe=green!50!black, colbacktitle=green!50!black, title=#1}
  \newtcolorbox{dangerblock}[1]{admonitionstyle, colback=red!5!white, colframe=red!60!black, colbacktitle=red!60!black, title=#1}
  \newtcolorbox{infoblock}[1]{admonitionstyle, colback=cyan!5!white, colframe=cyan!60!black, colbacktitle=cyan!60!black, title=#1}
  \newtcolorbox{exampleblock}[1]{admonitionstyle, colback=violet!5!white, colframe=violet!50!black, colbacktitle=violet!50!black, title=#1}
  \titlehead{%
    \centering
    \includegraphics[width=0.4\linewidth]{./assets/ethos-logo-reversed.png}\\[2cm]
  }
  \usepackage{xcolor}
  \let\oldmaketitle\maketitle
  \renewcommand{\maketitle}{%
    \begingroup
    \pagecolor{black}
    \color{white}
    % KOMA uses \normalcolor (i.e. black) in the "title" font by default,
    % which would otherwise override the \color{white} above.
    \setkomafont{title}{\color{white}}
    \setkomafont{author}{\color{white}}
    \setkomafont{date}{\color{white}}
    \oldmaketitle
    \endgroup
    \clearpage
    \pagecolor{white}
  }
  % The chapter title starts too low on the page: we reduce the space
  % reserved before \chapter (fairly generous by default in KOMA-Script).
  \RedeclareSectionCommand[beforeskip=1ex plus 0.5ex minus 0.2ex]{chapter}
  % Level-4 headings (####, \subsubsection) default to a large gap above
  % (~3.25ex) versus below (~1.5ex) in KOMA-Script - reduce both, and to a
  % more even ratio, so they read as a light subheading rather than a
  % section break.
  \RedeclareSectionCommand[
    beforeskip=1ex plus 0.5ex minus 0.2ex,
    afterskip=0.5ex plus 0.2ex minus 0.1ex
  ]{subsubsection}
  % Level-5 headings (#####, \paragraph) are run-in by default in KOMA-Script
  % (a negative afterskip, so the following text continues on the same line).
  % runin=false + a positive afterskip makes them start their own line, like
  % the other heading levels.
  \RedeclareSectionCommand[
    runin=false,
    beforeskip=1ex plus 0.5ex minus 0.2ex,
    afterskip=0.5ex plus 0.2ex minus 0.1ex
  ]{paragraph}
  % In the table of contents, \section entries ("<chapter>.<section>", e.g.
  % "5.10") only reserve enough width (tocnumwidth) for a single-digit
  % section number by default; once a chapter has 10+ sections, the title
  % crowds right up against the number. Widen it to fit two digits.
  \RedeclareSectionCommand[tocnumwidth=3.4em]{section}
  % Header: book title on one side, current chapter on the other.
  % The footer separator comes from the "footsepline" class option.
  \usepackage[automark]{scrlayer-scrpage}
  \pagestyle{scrheadings}
  \clearscrheadfoot
  % Slightly taller footheight to create a gap between the separator and
  % the page number (stuck together by default otherwise).
  \KOMAoptions{footsepline=true,headsepline=true,footheight=3ex}
  \automark[chapter]{chapter}
  % "Chapter <n> - <title>" rather than just "<n> <title>" in the header.
  % Both \markboth arguments must be set: the class is one-sided (scrreprt),
  % so \headmark (used by \ihead) reads the *right* mark - leaving it empty
  % made the chapter name vanish from the header.
  \renewcommand*{\chaptermark}[1]{\markboth{Chapter~\thechapter\ - #1}{Chapter~\thechapter\ - #1}}
  \ihead{\headmark}
  \makeatletter
  \ohead{\@title}
  \makeatother
  % Total page number, e.g. "23 / 215". \raisebox lowers the text to
  % create a visible gap with the separator (footheight alone isn't
  % enough, the content stays stuck to the top of its box).
  \usepackage{lastpage}
  \newcommand{\pagefootcontent}{\raisebox{-1.2ex}{\thepage~/~\pageref*{LastPage}}}
  % Document revision at the bottom left of the page (value taken from the
  % "version" metadata field, see \docversion defined in forge/template.latex).
  \newcommand{\pagefootrevision}{\raisebox{-1.2ex}{Revision~\docversion}}
  % One-sided document (scrreprt, no "twoside"): \ifoot is always the left
  % foot and \ofoot always the right one, on every page. Revision bottom-left,
  % total page number bottom-right, with no odd/even alternation.
  \ifoot{\pagefootrevision}
  \ofoot{\pagefootcontent}
  % A table (longtable) right before a floating figure can throw off the
  % remaining-space calculation and make the image overflow the bottom of
  % the page (known longtable/floats interaction bug). \FloatBarrier after
  % each table forces LaTeX to properly place any pending floats.
  \usepackage{placeins}
  \usepackage{float}
  \let\origfigure\figure
  \let\endorigfigure\endfigure
  % [H]: see the longtable/floats bug above.
  % \let\centering\raggedright: Pandoc emits a \centering inside the body of
  % every \begin{figure} (image + caption); we neutralise it here, within the
  % environment's group, to left-align figures like the rest of the text.
  % singlelinecheck=false so short captions are flushed left too, not centered.
  \renewenvironment{figure}[1][2] {
    \expandafter\origfigure\expandafter[H]
    \let\centering\raggedright
    \captionsetup{justification=raggedright,singlelinecheck=false}
  } {
    \endorigfigure
  }
  ```
---

<!-- \listoflistings -->
