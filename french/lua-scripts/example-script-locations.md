---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Emplacement des scripts d'exemple

Les scripts d'exemple officiels sont publiés sur
[github.com/FrSkyRC/ETHOS-Feedback-Community](https://github.com/FrSkyRC/ETHOS-Feedback-Community/tree/main/lua)
(en particulier `/lua/examples/task` et `/lua/examples/source`). La majorité
des exemples concernent les widgets Lua (configurés dans la section
[Configurer les écrans](../displays/custom-widgets.md)) ; l'exemple
**`servo`** illustre plus spécifiquement un **outil système** — un script
qui apparaît après **Info** dans la section Système des menus plutôt que
comme widget d'affichage.

## Téléchargement d'un script

1. Ouvrez le lien du dépôt ci-dessus dans un navigateur Web et accédez au
   dossier, puis au fichier `main.lua` que vous souhaitez télécharger.
2. Cliquez sur le fichier pour l'ouvrir et afficher le code, puis cliquez
   sur **Raw**.
3. Cliquez avec le bouton droit de la souris sur la page →
   **Enregistrer la page sous…**, puis enregistrez le fichier sous le nom
   `main.lua`.
4. Pour éviter les conflits avec les fichiers `main.lua` d'autres scripts,
   déplacez-le dans un dossier portant un nom approprié — le nom du dossier
   source lui-même est un choix judicieux.

Pour tous les autres fichiers dont un script a besoin (images, etc.) :
cliquez sur le fichier, cliquez sur **Download**, puis cliquez avec le
bouton droit de la souris et choisissez **Enregistrer l'image sous…** (ou
l'équivalent) pour l'enregistrer à côté du script.

Les scripts s'installent dans le dossier `scripts/` de la SD card/eMMC —
voir [Gestionnaire de
fichiers](../system-setup/file-manager.md#top-level-folders).

Consultez également le fil de discussion *FrSky ETHOS Lua Script
Programming* sur rcgroups pour découvrir des scripts communautaires et des
échanges allant au-delà des exemples officiels.
