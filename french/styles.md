---
title: Manuel français de Ethos 1.5.10
subtitle: Traduction de la doc anglaise écrite par Lothar Thole
lang: fr
tags: [FrSky, Ethos]
date: \today
papersize: a4

# Modèle
# documentclass: scrreprt
documentoptions: twoside

# Styles
fontsize: 12pt
colorlinks: true
linkcolor: Blue
citecolor: MidnightBlue
urlcolor: MidnightBlue

links-as-notes: true
numbersections: true

CJKmainfont: Microsoft YaHei
mainfont: Arimo
#sansfont: Linux Biolinum O
#monofont: Inconsolata
monofontoptions: Scale=.8

# Table des matières
toc: true
toc-depth: 1
lof: true
lot: true
tblPrefix: tab
lolTitle: Liste des extraits de code
listingtitle: Extrait de code

# Sources
csl: iso690-author-date-fr.csl

# https://tex.stackexchange.com/questions/7546/how-to-get-latex-symbol-in-document/7549#7549
header-includes:
- |
  \usepackage{lmodern}
  \usepackage{xspace}
  \usepackage{xltxtra}
  \let\tex\TeX
  \renewcommand{\TeX}{\tex\xspace}
---

<!-- \listoflistings -->
