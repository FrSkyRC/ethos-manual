---
translated_from: f37a19af41cd6ab9767ee0c39f708b7f8a1966d6
---

# Chaîne de production des captures d'écran

Chaque capture d'écran de ce manuel (actuellement environ 590, sous
`docs/en/assets/`) a été réalisée en scriptant le véritable simulateur Ethos, et non
à la main. L'installation se trouve dans l'ancien dépôt
[`ethos-manual`](https://github.com/FrSkyRC/ethos-manual), sous
`english/manual/`, et n'a **pas encore été portée dans ce dépôt** — cette
page documente son fonctionnement afin qu'elle puisse l'être, et pour que les captures d'écran
puissent être régénérées ou complétées entre-temps sans repartir de zéro.

## Structure

Pour chaque menu/section du manuel, il existe une paire de fichiers :

- `manual/macros/<name>.lua` — un script écrit à partir de l'API Lua du
  simulateur (voir ci-dessous) qui navigue jusqu'à un écran précis et appelle
  `simulator.screenshot(path)` à chaque point digne d'être capturé.
- `manual/<name>.sh` — un enrobage d'une seule ligne qui lance le binaire du
  simulateur pour une radio donnée, dirigé vers cette macro, par exemple :

```bash
ETHOS='/mnt/c/Program Files (x86)/FrSky/Ethos'
"${ETHOS}/X20S/simulator.exe" --read-only --no-gui --no-audio \
  --radio-settings ./x20s-en.bin --sd-directory ./sd --flash-directory ./flash \
  --exec ./macros/model-mixes.lua
```

`manual/screenshots.sh` exécute chaque macro en séquence pour régénérer
l'ensemble complet. Des fichiers `.sh` individuels existent par section, afin que
les captures d'écran d'une seule page puissent être régénérées sans tout relancer (chaque macro
prend de quelques secondes à plus d'une minute).

Principales options de la ligne de commande :

- `--read-only` — ne conserve aucune modification effectuée pendant l'exécution.
- `--no-gui` / `--no-audio` — quasi sans interface ; certaines macros nécessitent malgré tout l'interface graphique
  car le simulateur « saute » des étapes sans elle (voir le commentaire dans `screenshots.sh`).
- `--radio-settings <file>.bin` — les réglages enregistrés de la radio avec lesquels démarrer
  (c'est ce qui rend les captures d'écran spécifiques à une langue et à une radio — une
  exécution en allemand utilise un `.bin` allemand).
- `--sd-directory`, `--flash-directory`, `--documents-directory`,
  `--audio-directory` — dirigent le simulateur vers les modèles/firmwares/documents/sons
  qu'il doit voir, afin que les captures d'écran reflètent un contenu délibérément préparé plutôt
  que ce qui se trouve sur une véritable SD card.
- `--exec <script>.lua` — la macro à exécuter après le démarrage.

Chaque famille de radios (X20S, X20 PRO, X20 PRO AW, X18S) possède son propre binaire de
simulateur et nécessite son propre fichier `--radio-settings` par langue (par exemple
`x20s-en.bin`, `x20pro-en.bin`), puisque l'interface diffère légèrement d'une radio à
l'autre et que le fichier de réglages porte également la langue.

## L'API des macros

Les macros sont du Lua ordinaire, pilotant un objet global `simulator` :

| Appel | Rôle |
|---|---|
| `simulator.loadModel("name.bin")` | Charge un fichier de modèle spécifique avant de naviguer — chaque section du manuel utilise un modèle configuré pour illustrer cette section (voir la liste des modèles ci-dessous). |
| `simulator.pressKey(KEY_X, [holdSeconds])` | Appuie sur une touche physique — `KEY_ENTER`, `KEY_RTN`, `KEY_MDL`, `KEY_SYS`, `KEY_DISP`, `KEY_PAGE`, etc. Une durée de maintien déclenche un appui long (ouvre les menus contextuels). |
| `simulator.turnRotaryEncoder(n)` | Déplace l'encodeur de `n` crans (valeur négative = sens inverse) — le moyen principal de déplacer le curseur entre les champs. |
| `simulator.touch(x, y)` | Touche une coordonnée précise de l'écran — utilisé là où le tactile est le seul moyen d'atteindre un élément (par exemple pour changer la disposition du clavier). |
| `simulator.setAnalog(channel, value)` | Définit directement la position d'un manche/potentiomètre/curseur (`0` à `3` correspondent aux quatre manches principaux, `ANALOG_LAST_SLIDER` au dernier curseur), afin que les captures d'écran montrent une valeur délibérée et reproductible plutôt que celle par défaut du simulateur. |
| `simulator.setSwitch(n, position)` | Définit la position d'un interrupteur physique. |
| `simulator.setDateTime({...})` | Fige l'horloge du simulateur, afin que les horodatages des captures d'écran (et tout élément dépendant du temps) soient reproductibles d'une exécution à l'autre. |
| `simulator.screenshot(path)` | Capture l'écran courant dans un fichier PNG, relativement au répertoire de travail de la macro (d'où les chemins `../screenshots/...` à l'intérieur de chaque macro). |
| `simulator.connectUsb()` | Simule un branchement USB, pour capturer le menu USB. |
| `simulator.sleep(seconds)` | Attend qu'une animation ou une valeur de télémétrie se stabilise avant la capture. |

`manual/macros/common.lua` est chargé via `dofile` par la plupart des macros et ne fait que fixer
la date et l'heure, afin que chaque macro démarre au même instant simulé.

## Modèles utilisés par section

`manual/notes.txt` (repris de manière informelle, pas encore copié dans ce dépôt)
associe chaque macro au fichier de modèle `.bin` dont elle dépend, et explique pourquoi — par exemple
`model-mixes.lua` utilise `rarebear.bin`, `model-fm.lua` utilise `zblank.bin` (un
modèle avec une configuration de phases de vol délibérément vierge), `model-trims.lua` utilise
`blaster.bin` (configuré avec des trims décalés pour illustrer la plage des trims).
Le portage des notes de ce fichier vers une véritable documentation ici fait partie du
travail de phase 2 décrit ci-dessous.

## Ce qu'implique le portage dans le nouveau dépôt (pas encore fait)

- Décider si les macros sont réexécutées directement depuis ce dépôt (nécessitant une
  installation locale du simulateur Ethos, comme le faisait l'ancien dépôt) ou via l'intégration continue avec le
  simulateur embarqué/téléchargé dans le flux de travail.
- Restructurer les chemins de sortie plats `../screenshots/...` pour correspondre à la disposition des ressources
  de ce dépôt, par page et par langue (`docs/<locale>/assets/`).
- Un fichier `--radio-settings ... .bin` et une exécution de captures d'écran par langue, dès
  qu'une langue autre que `en` existe — les captures d'écran sont spécifiques à la langue de l'interface et
  ne peuvent pas être partagées entre langues.
- Décider quelle proportion des quelque 40 macros existantes reprendre telles quelles plutôt que de les
  réécrire en fonction de la structure de navigation actuelle de ce dépôt (certaines macros
  produisent des captures d'écran pour des sections qui ne correspondent plus 1:1 à la
  disposition des pages de ce manuel).
