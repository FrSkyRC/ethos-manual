---
translated_from: f9f31073c0e8b5352770d12703868b7972365db6
---

# Gestion des versions

Ethos publie aujourd'hui son firmware sous des numéros de version (1.6.x) et
a annoncé une évolution vers une identification par année (par exemple
« Ethos26 »). Ce manuel doit conserver la documentation des anciennes versions,
disponible et correcte, pendant que celle des nouvelles versions est en cours de
rédaction — cette page explique comment.

## Fonctionnement

La gestion des versions est assurée par [mike](https://github.com/jimporter/mike),
l'outil recommandé par Material for MkDocs lui-même. `.github/workflows/deploy.yml`
exécute `mike deploy` au lieu de publier directement à la racine de `gh-pages` :
chaque version est construite et validée dans son propre sous-dossier
(`/1.6/`, `/26/`, …), et `manual.rt-rc.com/` redirige vers la version qui porte
actuellement l'alias `latest`. Material affiche automatiquement une liste
déroulante de sélection de version, en lisant `versions.json` (maintenu par
`mike`) — ce mécanisme est indépendant du sélecteur de langue et se combine
proprement avec lui : la version constitue le segment de chemin externe, la
langue (dès qu'une autre que `en` existera) le segment interne, par exemple
`manual.rt-rc.com/26/fr/...`.

Ceci réutilise le même mécanisme de « sous-dossier sur `gh-pages` » que les
[prévisualisations de PR](index.md#pr-previews) — les dossiers de version de
`mike` et le dossier `pr-preview/` coexistent sur la même branche sans conflit,
puisque chacun ne touche que ses propres chemins.

## Organisation des sources : `main` + branches figées

- **`main` suit toujours le contenu de la version de firmware actuelle/la plus
  récente.** L'édition quotidienne s'y fait exactement comme aujourd'hui — rien
  ne change dans le processus normal de contribution.
- Dès que le manuel d'une nouvelle version de firmware doit commencer à diverger
  de ce qui se trouve sur `main`, **créez d'abord une branche portant le nom de
  l'ancienne version**, par exemple `1.6`, afin de la figer définitivement.
  `main` devient alors le contenu de la nouvelle version.
- Une branche figée n'est pas morte — elle peut toujours recevoir des
  corrections via ses propres PR. Elle ne suit simplement plus le développement
  de la nouvelle version.

## Créer une nouvelle version

Lorsque le manuel de la version suivante doit démarrer (par exemple Ethos26) :

1. Depuis `main`, créez et poussez la branche figée pour la version laissée
   derrière :

   ```
   git checkout main && git pull
   git branch 1.6
   git push origin 1.6
   ```

   La copie de `.github/workflows/deploy.yml` sur la branche `1.6` déploie
   désormais en permanence `mike deploy --push --update-aliases 1.6 latest` à
   chaque push sur cette branche — correct en l'état, aucune modification n'est
   nécessaire, puisqu'une branche est un instantané complet incluant sa propre
   configuration CI.

2. Sur `main`, modifiez `.github/workflows/deploy.yml` : remplacez la chaîne de
   version dans l'étape `Deploy version 1.6 with mike` (et dans son nom) de
   `1.6` par le libellé de la nouvelle version (par exemple `26`). C'est la
   **seule** modification requise pour commencer à déployer la nouvelle version
   — le prochain push sur `main` la publiera dans `/26/` et y déplacera l'alias
   `latest`, tandis que `/1.6/` restera exactement tel quel.

3. Mettez à jour le contenu de la nouvelle version sur `main` en fonction de ce
   qui a réellement changé — sections de menu nouvelles ou renommées, nouvelles
   captures d'écran, terminologie actualisée. Le `nav` de `mkdocs.yml` peut
   différer librement d'une branche à l'autre ; il n'y a aucune configuration
   partagée à maintenir synchronisée.

4. Ajoutez le nom de la nouvelle branche à la liste de déclencheurs `branches:`
   de `.github/workflows/pr-preview.yml` si les PR la ciblant doivent également
   bénéficier de prévisualisations en direct (les branches figées n'en ont
   généralement pas besoin, puisqu'elles ne reçoivent que des PR de correction
   occasionnelles).

## Captures d'écran et versions

Les captures d'écran sont réalisées à partir d'un build Ethos précis (voir
[Chaîne de production des captures d'écran](screenshot-pipeline.md)) et
appartiennent à la branche dont elles montrent l'interface — la création d'une
version bifurque naturellement le jeu de captures d'écran en même temps que tout
le reste, de sorte que `1.6/assets/` et (une fois régénéré pour la nouvelle
interface) le `docs/en/assets/` de `main` divergent indépendamment après le point
de branchement.
