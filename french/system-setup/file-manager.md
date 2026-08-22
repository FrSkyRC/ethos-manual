---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Gestionnaire de fichiers

![Gestionnaire de fichiers - radio](../screenshots/system-filemanager-radio.png)

Le gestionnaire de fichiers permet d'explorer les différents espaces de stockage de la radio et de flasher le firmware du module RF interne, des périphériques connectés en S.Port, des périphériques OTA (Over-The-Air) et des modules externes.

## Organisation du stockage

Appuyez sur **Flash** (ou sur `PAGE` pour changer de disque) pour explorer le disque flash USB virtuel interne de la radio, utilisé pour les bitmaps et les polices du système :

![Disque "Flash"](../screenshots/system-filemanager-flash.png)

- **`bitmaps/system`** : les bitmaps / icônes utilisées pour les affichages écran et les icônes
- **`fonts/`** : les fontes correspondant aux différentes langues sélectionnables

Le bootloader et le firmware système lui-même résident tous deux dans cette mémoire flash interne, sur toutes les radios FrSky depuis la X9D d'origine.

La série **X20/X20S/X20HD** nécessite une carte SD formatée en FAT32, de 32 Go ou moins (une SanDisk Ultra Micro SDHC classe 10 de 16 Go est un choix sûr). Les radios **X18** et **X20 Pro/R/RS** utilisent par défaut une mémoire eMMC interne pour le stockage des fichiers (mais une carte SD externe peut être ajoutée en complément). Appuyez sur l'onglet **Radio** pour l'explorer. Ethos créera automatiquement les répertoires `Logs/`, `models/` et `screenshots/` s'ils sont absents. `Firmware/` est une convention manuelle destinée à conserver les fichiers de firmware des périphériques, tels que les récepteurs.

## Répertoires de premier niveau {: #top-level-folders }

- **audio/** : fichiers audio utilisateur et système, répartis par voix
  (`audio/en/gb`, `audio/en/us`, `audio/en/default`). Les fichiers utilisateur
  sont lus par la [fonction spéciale Lire audio](../model-setup/special-functions.md).
  Les fichiers système comprennent `hello.wav` (le message d'accueil
  « Bienvenue dans Ethos ! » : un `bye.wav` peut être ajouté mais n'est pas
  fourni par Ethos). Le format doit être 16 kHz ou 32 kHz PCM linéaire 16 bits,
  ou alaw (EU) / mulaw (US) 8 bits. Les noms de fichiers peuvent comporter
  jusqu'à 31 caractères plus l'extension. Les trois dossiers de voix sont
  maintenus à jour par Ethos Suite, quel que soit celui réellement sélectionné.

  ![Menu contextuel pour un fichier Wav](../screenshots/system-filemanager-audio.png)

- **bitmaps/** : le dossier `bitmaps/models/` est destiné aux images de
  modèles de l'utilisateur (utilisables dans [Editer modèle](../model-setup/model-edit.md)
  ou dans les assistants de nouveau modèle). `bitmaps/user/` est destiné à
  tout le reste. Format recommandé : BMP 32 bits, 8 bits par couleur, avec
  canal alpha, 300×280 px. Ce format réduit la charge de calcul sur le
  microcontrôleur embarqué de la radio. Ethos redimensionne les BMP à la
  volée, contrairement aux formats PNG ou JPEG. Les noms de fichiers ne
  peuvent utiliser que les caractères `A-Z a-z 0-9 ()!-_@#;[]+=` et l'espace,
  et ne doivent pas comporter plus de 11 caractères (plus 4 pour l'extension)
  pour apparaître dans l'interface de sélection d'image de modèle : les noms
  plus longs s'affichent toujours dans le gestionnaire de fichiers, mais ne
  pourront pas y être sélectionnés. Ethos Suite possède un module de conversion
  des images qui se charge du changement de format pour vous.

  ![Répertoire /bitmaps/models](../screenshots/system-filemanager-bitmaps.png)

- **documents/user/** : documents texte de l'utilisateur, qui peuvent être
  appelés depuis le widget d'affichage **Texte**.

- **Firmware/** : fichiers de mise à jour pour le module RF interne, les
  modules externes et les autres périphériques (récepteurs, etc.), flashés
  depuis ce répertoire via le S.Port ou en OTA. Le nouveau firmware doit être
  copié ici pendant que la radio est en [mode bootloader](../getting-started/usb-connection-modes.md)
  et connectée par USB. Sélectionner un fichier de firmware et choisir
  **Flash** lance la mise à jour :

  ![Mise à jour module interne](../screenshots/system-filemanager-flash-TD-ISRM.png)
  
  ![Mise à jour récepteur S8R via S.Port](../screenshots/system-filemanager-flash-S8R.png)
  
  ![Mise à jour bootloader](../screenshots/system-filemanager-flash-bootloader.png)

- **I18n/** : les fichiers de traduction de la langue.

- **Logs/** : les journaux de logs.

- **models/** : les fichiers de modèles eux-mêmes. Ils ne peuvent pas être
  modifiés directement ici, mais peuvent être sauvegardés ou partagés. Depuis
  Ethos v1.2.11, le nom du modèle est utilisé comme nom de fichier plutôt que
  `model01.bin` et suivants (par exemple, un modèle nommé « Extra » aura comme
  nom de fichier `Extra.bin`. S'il y a un second « Extra », il sera nommé
  `Extra01.bin`). Lors de la modification du nom d'un modèle dans
  [Editer modèle](../model-setup/model-edit.md), le nom de son fichier est
  également modifié : toujours en minuscules (le nom réel du modèle, avec ses
  majuscules et minuscules, est enregistré à l'intérieur du fichier), et tous
  les caractères ne sont pas pris en charge dans le nom de fichier. Depuis la
  v1.1.0 Alpha 17, chaque catégorie de modèles créée par l'utilisateur possède
  son propre sous-dossier.

- **screenshots/** : les captures d'écran créées par la [fonction spéciale
  Capture écran](../model-setup/special-functions.md).

- **scripts/** : les scripts Lua, éventuellement organisés dans des dossiers
  individuels avec leurs fichiers annexes. Les types de scripts sont les
  **widgets** (voir [Écrans](../displays/index.md)), les **tâches et sources**
  (capteurs personnalisés ou actions après le vol, qui apparaissent
  dans le menu [Lua](../model-setup/lua-scripts.md) du modèle après leur installation ici) et
  les **outils** (par exemple les outils de configuration des récepteurs
  stabilisés dans les menus System). Chaque module externe tiers possède son
  propre script et son propre dossier, par exemple `scripts/multi`,
  `scripts/elrs`, `scripts/ghost`, `scripts/crossfire`.

  !!! warning
      Les scripts Lua augmentent le temps de démarrage de la radio. S'ils sont
      correctement mis en œuvre, le retard ne devrait pas être perceptible :
      mais un script mal écrit peut retarder le démarrage de façon quasi
      indéfinie.

- **radio.bin** (dossier racine) : le fichier des paramètres système, créé
  par la radio elle-même lors de son initialisation. Il doit être sauvegardé
  avec le dossier `models/` avant de mettre à jour le firmware, pour permettre
  un retour vers la version antérieure si nécessaire.

- **firmware.bin** (dossier racine) : déposez ici un nouveau fichier de
  firmware de radio pour qu'il soit flashé automatiquement lors de la prochaine
  déconnexion de la radio de l'ordinateur. Le contenu de la carte SD/eMMC et
  celui du disque flash interne peuvent devoir être mis à jour dans la même
  opération.

- **sdcard.version** (dossier racine) : la version du contenu de la carte SD,
  maintenue par Ethos Suite.

## Partage de fichiers via Bluetooth

Ethos dispose d'une fonction de transfert de fichiers Bluetooth radio-radio. Sur la radio **de réception**, à l'aide du gestionnaire de fichiers, accédez au dossier dans lequel vous souhaitez recevoir le fichier, appuyez longuement sur `ENT` et sélectionnez **Recevoir le fichier ici** :

![Transfert bluetooth (réception)](../screenshots/system-filemanager-bluetooth-receive.png)

Sur la radio **qui envoie**, accédez au fichier que vous souhaitez envoyer et appuyez dessus, sélectionnez **Envoyer le fichier**, puis suivez les instructions sur les deux radios :

![Transfert bluetooth (envoi)](../screenshots/system-filemanager-bluetooth-send.png)

Si l'une des deux radios est déjà connectée à un autre appareil Bluetooth (télémétrie, liaison écolage ou audio sur X20S/Pro), il vous sera demandé si vous souhaitez déconnecter cet appareil.
