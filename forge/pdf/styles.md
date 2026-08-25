---
title: English manual for Ethos 26.1
subtitle: Written by Lothar Thole
author: FrSky
version: "26.1.0"
lang: en
keywords: [FrSky, Ethos]
date: \today
papersize: a4

# Modèle
documentclass: scrreprt
classoption:
- twoside
- footsepline
- headsepline
- plainfootsepline
geometry:
- inner=2cm
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

CJKmainfont: Microsoft YaHei
mainfont: Inter
# Inter n'expose pas de métadonnées OpenType "Language" pour le français.
# sans ça, fontspec/babel émettent "Language 'French' not available for font
# 'Inter'" (cosmétique, mais Language=Default fait taire la recherche).
mainfontoptions: Language=Default
#sansfont: Linux Biolinum O
monofont: Inconsolata
monofontoptions: Scale=.8

# Table des matières
toc: true
toc-depth: 1
lof: false
lot: false
tblPrefix: tab
lolTitle: Liste des extraits de code
listingtitle: Extrait de code

# Sources
csl: iso690-author-date-fr.csl

# https://tex.stackexchange.com/questions/7546/how-to-get-latex-symbol-in-document/7549#7549
# Note : ce bloc est enveloppé en ```{=latex} pour être passé tel quel à LaTeX.
# sans ça, Pandoc le retraite comme du Markdown (échappe les %, réinterprète
# les guillemets…) et casse le préambule.
# Voir aussi forge/template.latex : template Pandoc personnalisé (une seule
# ligne modifiée par rapport au template par défaut, pour corriger un bug de
# ligature/apostrophe avec babel-french : trop tôt dans le préambule pour être
# réparable depuis ce header-includes).
header-includes:
- |
  ```{=latex}
  \usepackage{lmodern}
  % Une image seule dans un paragraphe devient une figure numérotée
  % (Pandoc, implicit_figures) dès qu'elle a un texte alt ; le numéro
  % n'apporte rien ici, on garde juste la légende (si elle existe).
  \usepackage{caption}
  \captionsetup{labelformat=empty,labelsep=none}
  % Lisse la justification (réduit les gros espaces sur les lignes difficiles à couper)
  \usepackage{microtype}
  \usepackage{xspace}
  \usepackage{xltxtra}
  % Inter (mainfont) n'a pas de glyphes hébreux ; Arimo si. Utilisé
  % explicitement pour ce cas (voir configuration-du-systeme/generalites.md).
  \newfontfamily{\hebrewfont}{Arimo}
  \let\tex\TeX
  \renewcommand{\TeX}{\tex\xspace}
  % markdown+smart transforme les guillemets droits en guillemets typographiques
  % anglais (“ ”) ; on les remplace par les guillemets français (« »).
  \usepackage{newunicodechar}
  \newunicodechar{“}{«\,}
  \newunicodechar{”}{\,»}
  % babel-french traite spécifiquement l'apostrophe typographique (’) comme
  % marqueur d'élision et y insère un espace anormalement large dans ce
  % document. On la fait pointer vers le glyphe simple (bug absent avec
  % l'apostrophe ASCII, qui ne déclenche pas ce traitement spécial).
  \newunicodechar{’}{\textquotesingle}
  % Boîtes d'admonition façon Material for MkDocs (bandeau de titre coloré +
  % fond teinté), une par type (!!! note "...", !!! warning "...", ...).
  % Voir forge/admonitions.lua pour la conversion depuis ce format MkDocs.
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
    % KOMA utilise \normalcolor (donc noir) dans la police "title" par
    % défaut, qui l'emporterait sinon sur le \color{white} ci-dessus.
    \setkomafont{title}{\color{white}}
    \setkomafont{author}{\color{white}}
    \setkomafont{date}{\color{white}}
    \oldmaketitle
    \endgroup
    \clearpage
    \pagecolor{white}
  }
  % Le titre de chapitre commence trop bas sur la page : on réduit l'espace
  % réservé avant \chapter (par défaut assez généreux dans KOMA-Script).
  \RedeclareSectionCommand[beforeskip=1ex plus 0.5ex minus 0.2ex]{chapter}
  % En-tête : titre du livre d'un côté, chapitre en cours de l'autre.
  % Le séparateur de bas de page vient de l'option de classe "footsepline".
  \usepackage[automark]{scrlayer-scrpage}
  \pagestyle{scrheadings}
  \clearscrheadfoot
  % footheight un peu plus grand pour créer un interligne entre le
  % séparateur et le numéro de page (par défaut collés l'un à l'autre).
  \KOMAoptions{footsepline=true,headsepline=true,footheight=3ex}
  \automark[chapter]{chapter}
  % "Chapitre <n> - <titre>" plutôt que juste "<n> <titre>" dans l'en-tête.
  \renewcommand*{\chaptermark}[1]{\markboth{Chapter~\thechapter\ - #1}{}}
  \ihead{\headmark}
  \makeatletter
  \ohead{\@title}
  \makeatother
  % Numéro de page total, ex. "23 / 215". \raisebox abaisse le texte pour
  % créer un interligne visible avec le séparateur (footheight seul ne
  % suffit pas, le contenu reste collé en haut de sa boîte).
  \usepackage{lastpage}
  \newcommand{\pagefootcontent}{\raisebox{-1.2ex}{\thepage~/~\pageref*{LastPage}}}
  % Révision du document en bas de page à gauche (valeur reprise du champ
  % "version" des métadonnées, cf. \docversion défini dans forge/template.latex).
  \newcommand{\pagefootrevision}{\raisebox{-1.2ex}{Révision~\docversion}}
  % \ifoot/\ofoot (intérieur/extérieur) alternent gauche/droite selon la
  % parité de page en recto-verso ; \Ifthispageodd (natif KOMA) permet de
  % forcer la révision toujours à gauche et le numéro toujours à droite.
  \ifoot[\pagefootrevision]{\Ifthispageodd{\pagefootrevision}{\pagefootcontent}}
  \ofoot[\pagefootcontent]{\Ifthispageodd{\pagefootcontent}{\pagefootrevision}}
  % Un tableau (longtable) juste avant une figure flottante peut fausser le
  % calcul de place restante et faire déborder l'image en bas de page (bug
  % connu de l'interaction longtable/floats). \FloatBarrier après chaque
  % tableau force LaTeX à replacer proprement les flottants en attente.
  \usepackage{placeins}
  \usepackage{float}
  \let\origfigure\figure
  \let\endorigfigure\endfigure
  \renewenvironment{figure}[1][2] {
    \expandafter\origfigure\expandafter[H]
  } {
    \endorigfigure
  }
  ```
---

<!-- \listoflistings -->
