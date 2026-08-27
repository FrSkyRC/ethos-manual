---
translated_from: f37a19af41cd6ab9767ee0c39f708b7f8a1966d6
---

# Chaîne de production des captures d'écran

Chaque capture d'écran de ce manuel (environ 750 pour le français) est produite en pilotant
par script le véritable simulateur Ethos compilé en WebAssembly, et non prise à la main.
L'ensemble tourne via `forge/screenshots.py`.

## Lancer une génération

Se placer dans le dossier de la langue concernée (les chemins de `screenshots.py` sont
relatifs au répertoire courant), puis :

```bash
cd french
python ../forge/screenshots.py --release 26.1.0
```

Options utiles :

- **`--release <tag>`** (obligatoire) : la release GitHub `FrSkyRC/ETHOS-Feedback-Community`
  à utiliser pour le simulateur et les fichiers audio, par exemple `26.1.0` ou `26.1.0-RC7`.
- **`--radio <clé>`** : limite l'exécution à une seule famille de radio (`X20S_FCC`,
  `X20PRO_FCC`, `X18S_FCC`, `X20PROAW_FCC`).
- **`--force`** : force le retéléchargement même si un fichier déjà en cache a moins de 24h
  (voir plus bas).
- Un filtre positionnel optionnel (motif shell), par exemple `model-mixes*.lua`, pour ne
  rejouer qu'une partie des macros d'une radio sans tout relancer.

## Ce qui se passe en coulisses

1. **Téléchargements à la demande**, mis en cache dans `forge/.cache/` (retéléchargés
   automatiquement si le fichier en cache a plus de 24h, sauf avec `--force`) :
   - `run_wasm.js` depuis `FrSkyRC/ethos-tools` : charge le module WASM sous Node.js et sait y
     exécuter une macro Lua ;
   - le simulateur WASM lui-même, propre à chaque radio, depuis les assets de la release
     GitHub demandée (l'archive `<radio>-WebSimulator.zip`, à ne pas confondre avec
     `<radio>.zip` qui ne contient que `firmware.bin`) ;
   - les fichiers audio système par langue (`audio-<code>.zip`, un par langue prise en charge
     par Ethos, pas seulement celles traduites dans ce dépôt).
2. **Préparation d'un répertoire de build** (`forge/build/`, recréé à chaque lancement) :
   les sous-dossiers `models/`, `bitmaps/`, `scripts/`, `documents/`, `firmware/`, `logs/` et
   `macros/` sont copiés depuis la forge commune (`forge/`) *puis* depuis la forge de la
   langue courante (`french/forge/`), qui peut donc surcharger n'importe quel fichier commun
   (typiquement `macros/translations.lua`, voir plus bas). Le fichier `<radio>.bin` (réglages
   radio de base) est cherché d'abord dans `french/forge/`, puis dans `forge/` en repli.
3. **Exécution des macros**, une par une, chacune lancée via :

   ```bash
   node run_wasm.js <radio>.js --root-directory forge/build --macro USER:/macros/<nom>.lua
   ```

   La liste des macros par radio est en dur dans `ALL_MACROS` (`forge/screenshots.py`) :
   une trentaine pour `X20S_FCC` (une par menu/section), une seule macro « chapeau » pour
   chacune des trois autres familles (`X20PRO_FCC`, `X18S_FCC`, `X20PROAW_FCC`), qui ne
   couvrent que les vues propres à ces radios.
4. **Comparaison aux captures de référence déjà commitées** (voir la section dédiée
   ci-dessous).

## Les macros

Les fichiers `forge/macros/*.lua` sont du Lua ordinaire pilotant un objet global
`simulator` (et quelques fonctions `os.*`/`system.*`) :

| Appel | Rôle |
| --- | --- |
| `simulator.loadModel("name.bin")` | Charge un fichier de modèle avant de naviguer : chaque macro utilise un modèle préparé pour illustrer sa section. |
| `simulator.setReadOnly(true)` | Empêche toute modification persistante pendant l'exécution (posé une fois par `common.lua`). |
| `simulator.resetAnalogs()` / `simulator.resetSwitches()` | Remet manches/curseurs et interrupteurs à leur état neutre avant de les positionner explicitement. |
| `simulator.pressKey(KEY_X, [durée])` | Appuie sur une touche physique : `KEY_ENTER`, `KEY_RTN`, `KEY_MDL`, `KEY_SYS`, `KEY_DISP`, `KEY_PAGE`. Une durée déclenche un appui long. |
| `simulator.turnRotaryEncoder(n)` | Tourne l'encodeur de `n` crans (négatif = sens inverse). |
| `simulator.touch(x, y)` | Touche une coordonnée précise de l'écran. |
| `simulator.enterText(...)` | Saisit du texte dans un champ. |
| `simulator.setAnalog(canal, valeur)` | Positionne directement un manche/potentiomètre/curseur, pour une valeur reproductible plutôt que la valeur par défaut du simulateur. |
| `simulator.setSwitch(n, position)` | Positionne un interrupteur physique. |
| `simulator.setDateTime({...})` | Fige l'horloge simulée (posé une fois par `common.lua`, pour un horodatage identique à chaque exécution). |
| `simulator.connectUsb()` | Simule un branchement USB. |
| `simulator.advertizeBluetooth()` | Simule la détection Bluetooth. |
| `simulator.injectSPortFrame({...})` | Injecte une trame de télémétrie S.Port factice (utilisé par `common.lua` pour afficher des valeurs de capteur plausibles sans vrai récepteur). |
| `simulator.reloadScripts()` | Recharge les scripts Lua utilisateur après en avoir déposé un nouveau. |
| `simulator.sleep(secondes)` | Attend qu'une animation ou une valeur se stabilise avant la capture. |
| `simulator.screenshot(chemin)` | Capture l'écran courant en PNG, par exemple `simulator.screenshot("/screenshots/mainview.png")`. |

`common.lua`, chargé via `dofile("common.lua")` par la plupart des macros, centralise ce qui
doit être identique à chaque exécution : date/heure figée, mode lecture seule, reset des
analogiques/interrupteurs, injection de télémétrie factice, et détection du mode de manches
(`system.getStickMode()`) pour définir `throttleStickIndex`/`elevatorStickIndex`.

`translations.lua`, chargé par `common.lua`, fournit la fonction `translate(texte)` utilisée
par les macros pour retrouver un libellé d'interface dans la langue courante (recherche de
modèle par nom, position d'un dossier dans un menu, etc.) : la version commune
(`forge/macros/translations.lua`) contient les libellés anglais, et chaque langue peut la
surcharger (`french/forge/macros/translations.lua` contient les libellés français) grâce au
mécanisme de copie en deux temps décrit plus haut.

## Comparaison avec les captures de référence

Une fois toutes les macros exécutées, `copy_screenshots()` compare chaque nouvelle capture
(`forge/build/screenshots/`) à la référence déjà commitée dans `french/screenshots/` (ou
`french/assets/` si ce dossier n'existe pas) — **pixel par pixel**, pas octet par octet, pour
ne pas signaler un changement quand seul l'encodage PNG diffère. Résultat déposé dans
`forge/build/fail/` :

- **Nouvelle capture** (pas encore de référence) : copiée telle quelle, recompressée sans
  perte au passage.
- **Capture modifiée** (pixels différents) : l'ancienne (`<nom>.ref.png`), la nouvelle
  (`<nom>.png`) et une image de diff (`<nom>.diff.png`, pixels différents surlignés en vert)
  sont déposées côte à côte pour comparaison visuelle.
- **Pixels identiques mais réencodage plus compact** : la référence est directement mise à
  jour en place (silencieusement, avec le gain affiché dans la sortie), sans rien déposer
  dans `fail/`.

Si tout est identique, `fail/` reste vide (mais existe toujours, pour que la CI puisse
vérifier son absence de contenu sans distinguer les deux cas).
