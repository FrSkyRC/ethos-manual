---
translated_from: 09903178852b3cc292f191285295c2f99434e1ae
---

# Contribuer

## Pourquoi ce manuel existe

Le manuel précédent ([`ethos-manual`](https://github.com/FrSkyRC/ethos-manual))
s'était scindé en deux moitiés déconnectées, une par langue. L'arborescence
anglaise n'a jamais été qu'un **banc de génération de captures d'écran** : des
scripts shell pilotant le véritable simulateur Ethos via une API de macros Lua
pour produire les captures de l'interface, mais aucune source Markdown ni aucun
autre format texte brut ne contenait la prose réelle du manuel. Le texte anglais
n'a jamais existé que sous forme d'une pile d'exports PDF/ODT. L'arborescence
française, à l'inverse, était un export GitBook entièrement rédigé, avec du
contenu réel, mais construit et maintenu de manière indépendante, avec son propre
jeu de captures d'écran collées à la main. Les autres langues n'avaient ni l'un
ni l'autre. Il n'existait aucune source unique de vérité *à partir de laquelle*
traduire, et aucun moyen de savoir quand une page traduite avait dérivé par
rapport à la source anglaise (inexistante).

Ce dépôt repart de zéro avec un format unique pour chaque page, dans chaque
langue : du Markdown simple, construit avec
[MkDocs Material](https://squidfunk.github.io/mkdocs-material/)
(la même pile que celle utilisée par [wingflight-docs](https://doc.wingflight.org)),
déployé sur GitHub Pages à chaque push sur `main`.

## Flux de travail

Il n'y a ni CMS ni éditeur web devant le contenu : les rédacteurs et les
traducteurs travaillent directement dans git, comme pour n'importe quelle autre
modification de ce dépôt :

1. Créez une branche depuis `main` directement dans ce dépôt (voir la note sur
   les forks ci-dessous).
2. Modifiez le ou les fichiers `.md` concernés sous `docs/en/`.
3. Prévisualisez en local avec `mkdocs serve` (voir le
   [README](https://github.com/robthomson/ethos-manual-rework) racine), ou
   ouvrez simplement la pull request et utilisez l'aperçu automatique de PR
   décrit ci-dessous.
4. Ouvrez une pull request.

Les captures d'écran référencées par une page sont stockées à côté d'elle dans
`docs/en/assets/` et ne sont que de simples liens d'images Markdown : aucune
syntaxe particulière. Voir
[Chaîne de génération des captures d'écran](screenshot-pipeline.md) pour savoir
comment elles sont produites.

### Aperçus de PR {: #pr-previews }

Chaque pull request visant `main` obtient son propre aperçu en direct, construit
et déployé automatiquement par `.github/workflows/pr-preview.yml` : à l'adresse
`manual.rt-rc.com/pr-preview/<numéro de PR>/`, lié dans un commentaire de bot sur
la PR et mis à jour à chaque push. Il est supprimé automatiquement à la fermeture
de la PR. Le site principal lui-même (`manual.rt-rc.com`) n'est pas affecté : les
aperçus cohabitent avec lui dans un dossier `pr-preview/` sur la branche
`gh-pages`, qui survit à chaque déploiement en production.

Cela ne fonctionne que pour les branches poussées directement dans ce dépôt, pas
pour les forks : une PR issue d'un fork n'obtiendra pas d'aperçu en direct
(GitHub refuse délibérément l'accès en écriture au `GITHUB_TOKEN` pour les
workflows `pull_request` déclenchés depuis un fork, afin qu'un fork ne puisse pas
se servir de la CI pour pousser du contenu arbitraire sur `gh-pages`). Les
contributeurs travaillant sur un fork peuvent toujours prévisualiser en local
avec `mkdocs serve`.

## Gestion des versions

Les manuels de plusieurs versions du firmware (par exemple 1.6 en parallèle d'un
futur Ethos26) cohabitent dans le même dépôt sous forme de branches distinctes,
chacune déployée sur son propre chemin `manual.rt-rc.com/<version>/` avec une
liste déroulante de sélection de version : voir
[Gestion des versions](versioning.md) pour le schéma complet et la procédure de
création d'une nouvelle version.

## Plan de traduction {: #translation-plan }

Les traducteurs (humains ou IA) travaillent directement dans git, comme pour
n'importe quelle autre modification : pas de CMS, pas d'application de traduction
séparée. Un premier pilote en français (une poignée de pages) a validé la
mécanique de bout en bout. Voici comment cela fonctionne concrètement.

### Ajouter/mettre à jour une traduction {: #addingupdating-a-translation }

1. Créez une branche, créez/modifiez
   `docs/<locale>/<même chemin que la page anglaise>`, en traduisant la prose.
   Conservez tel quel le texte littéral (noms de touches comme `ENT`, `RTN`,
   noms d'éléments d'interface affichés à l'écran).
2. Marquez la page avec le commit anglais à partir duquel elle a été traduite :

   ```markdown
   ---
   translated_from: <commit sha of docs/en/... at translation time>
   ---
   ```

   Trouvez ce sha avec `git log -1 --format=%H -- docs/en/<path>`.
3. **Si la page anglaise comporte un titre vers lequel d'autres pages pointent
   par ancre** (vérifiez en recherchant `#that-heading-slug` dans l'ensemble de
   `docs/en/`), ne laissez pas le slug auto-généré du titre traduit modifier la
   cible : fixez explicitement le même identifiant, stable quelle que soit la
   langue, avec `attr_list` (déjà activé) :

   ```markdown
   ## Choisir une source {: #choosing-a-source }
   ```

   Omettre cette étape ne casse pas la construction, mais casse silencieusement
   le défilement vers l'ancre pour toute autre page, encore non traduite, qui
   pointe vers ce titre via le mécanisme de repli.
4. Ouvrez une PR : [prévisualisez-la](#pr-previews) comme n'importe quelle autre
   modification, y compris le sélecteur de langue.

### Captures d'écran

Rien à dupliquer au préalable.
[`mkdocs-static-i18n`](https://github.com/ultrabug/mkdocs-static-i18n)
se replie sur le fichier anglais pour *toute* ressource dont une locale n'a pas
sa propre copie : le `../screenshots/foo.png` d'une page traduite fonctionne tel quel,
sans modification, en affichant la capture anglaise, jusqu'à ce qu'une véritable
capture localisée (produite une fois la
[chaîne de génération des captures d'écran](screenshot-pipeline.md) portée et
exécutée avec les réglages radio de cette langue) soit déposée sous le même nom
de fichier dans `docs/<locale>/assets/`, ce qui remplace alors silencieusement le
repli.

### Suivi de l'obsolescence

[État des traductions](translation-status.md) est généré automatiquement avant
chaque construction (`hooks/i18n_status.py`, branché via la section `hooks:` de
`mkdocs.yml` : exécuté en local, dans les aperçus de PR comme en production,
toujours à jour, jamais commité dans git) et compare le marqueur
`translated_from` de chaque locale au commit de dernière modification réel de
chaque page anglaise : **à jour**, **obsolète** (l'anglais a évolué) ou
**manquante**. Cette page constitue la liste de travail : pas de tickets GitHub,
pas besoin de fouiller dans les journaux d'Actions.

### Traduction automatisée (facultatif)

`scripts/translate.py` est un script local autonome (il ne fait partie ni de la
construction du site ni de la CI) qui traite cette même liste de pages
manquantes/obsolètes via l'API Claude afin de produire un premier jet de
traduction pour chaque page, estampillé automatiquement avec le frontmatter
`translated_from:` correct :

```bash
pip install anthropic pyyaml   # if not already installed
export ANTHROPIC_API_KEY=...   # or use `ant auth login`

python scripts/translate.py --dry-run       # see what's queued, no API calls
python scripts/translate.py --only fr       # translate everything missing/stale for French
python scripts/translate.py --pages model-setup/mixes.md   # just one page
```

Par défaut, il lit toutes les locales depuis la configuration du plugin `i18n`
de `mkdocs.yml` (`--only` restreint à certaines d'entre elles), ignore tout ce
qui est déjà à jour sauf si `--force` est passé, et ne commite ni ne pousse
jamais. Il écrit uniquement des fichiers sous `docs/<locale>/`, exactement comme
si vous les aviez édités à la main. Relisez le diff, effectuez la vérification de
[fixation des ancres](#addingupdating-a-translation) pour tout titre nouvellement
traduit, puis ouvrez une PR comme d'habitude.

Le prompt système fournit d'emblée à Claude le domaine du manuel (firmware de
radio FrSky Ethos, public de modélistes RC) ainsi qu'une liste de termes qui ne
doivent jamais être traduits (noms de touches physiques, noms de protocoles, noms
de marques) : la même technique que celle utilisée par le dépôt frère
[`rotorflight-lua-ethos-suite`](https://github.com/rotorflight/rotorflight-lua-ethos-suite)
dans son propre `bin/i18n/auto-translate.py`. Un glossaire de termes établi
pendant le pilote français est intégré pour `fr`. Étendez `GLOSSARIES` dans le
script de la même manière dès qu'une autre locale compte quelques pages traduites
et relues.

Les libellés des onglets de navigation (par exemple « Model Setup ») restent en
anglais jusqu'à ce qu'une locale définisse `nav_translations` pour eux :
délibérément pas encore fait tant que seule une poignée de pages est traduite,
car traduire les libellés avant le contenu qu'ils désignent produirait un effet
étrange.
