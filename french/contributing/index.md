---
translated_from: 09903178852b3cc292f191285295c2f99434e1ae
---

# Contribuer

## Pourquoi ce manuel existe

Le manuel anglais a longtemps été rédigé et maintenu sous forme de document
ODT (OpenDocument Text) — un format confortable pour de la rédaction longue,
mais qui ne se prête ni au diff, ni à la relecture par pull request, ni à un
site web navigable. Le manuel français, de son côté, était déjà maintenu en
Markdown, une page par fichier.

Ce dépôt fait converger les deux : `forge/odt_to_markdown.py` convertit le
contenu ODT en la même structure Markdown que le français (une page par
fichier, avec ses images), et l'ensemble des langues est désormais construit
avec [MkDocs Material](https://squidfunk.github.io/mkdocs-material/), un
seul site avec un sélecteur de langue, déployé sur GitHub Pages.

## Flux de travail

Il n'y a ni CMS ni éditeur web devant le contenu : on travaille directement
dans git, comme pour n'importe quelle autre modification de ce dépôt.

1. Créez une branche depuis `26.1`.
2. Modifiez le ou les fichiers `.md` concernés directement dans le dossier de
   la langue (`french/...`, `english/...`, etc.) — c'est bien là
   qu'est le contenu source ; le dossier `docs/<locale>/` que voit MkDocs
   n'est qu'un lien créé localement par `forge/mkdocs.py`, pas l'endroit où
   éditer.
3. Relancez `python forge/mkdocs.py` (régénère les liens `docs/<locale>/` et
   la configuration de navigation) puis prévisualisez avec `mkdocs serve`.
4. Ouvrez une pull request.

Les captures d'écran référencées par une page sont stockées à côté d'elle
(`french/screenshots/`, ou `french/assets/` pour les images qui ne sont pas
des captures) et ne sont que de simples liens d'images Markdown : aucune
syntaxe particulière. Voir
[Chaîne de génération des captures d'écran](screenshot-pipeline.md) pour
savoir comment elles sont produites.

Chaque push sur `26.1` reconstruit et redéploie automatiquement le site sur
GitHub Pages (`.github/workflows/mkdocs.yml`).

## Ajouter ou mettre à jour une traduction

1. Créez/modifiez la page dans le dossier de la langue concernée, en
   conservant la même structure de chemin que la page anglaise équivalente
   pour qu'un futur suivi des traductions puisse les rapprocher facilement.
   Conservez tel quel le texte littéral (noms de touches comme `ENT`, `RTN`,
   noms d'éléments d'interface affichés à l'écran).
2. **Si le titre traduit est la cible d'un lien par ancre depuis une autre
   page** (recherchez `#that-heading-slug` dans le reste du dépôt), ne
   laissez pas le slug auto-généré du titre traduit changer la cible : fixez
   explicitement le même identifiant, stable quelle que soit la langue, avec
   `attr_list` (déjà activé) :

   ```markdown
   ## Choisir une source {: #choosing-a-source }
   ```

   Omettre cette étape ne casse pas la construction, mais casse
   silencieusement le défilement vers l'ancre depuis toute page qui pointe
   vers ce titre.
3. Les captures d'écran ne sont pas partagées automatiquement entre langues
   (`fallback_to_default: false` dans `mkdocs.yml`, voir
   [Chaîne de génération des captures d'écran](screenshot-pipeline.md)) :
   une page traduite a besoin de ses propres images, au même chemin relatif
   que la page anglaise.
4. Ouvrez une pull request comme n'importe quelle autre modification.
