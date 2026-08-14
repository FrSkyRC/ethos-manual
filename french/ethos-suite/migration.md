---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Migration

Passage d'une radio des anciens outils de mise à jour PC séparés vers Ethos Suite,
pour la première fois.

1. **Assurez-vous d'utiliser au moins la version 1.1.4 d'Ethos** — la version minimale
   nécessaire pour flasher le nouveau chargeur de démarrage compatible Ethos Suite
   (format FRSK) directement à partir du [gestionnaire de
   fichiers](../system-setup/file-manager.md). Si ce n'est pas le cas, effectuez d'abord
   manuellement la mise à jour vers la version 1.1.4.
2. **Faites une sauvegarde de votre carte SD ou eMMC** — copiez l'intégralité du contenu
   dans un dossier de votre ordinateur.
3. **Téléchargez le dernier chargeur de démarrage** depuis les
   [versions ETHOS-Feedback-Community](https://github.com/FrSkyRC/ETHOS-Feedback-Community/releases)
   et décompressez l'archive. Chaque version est publiée avec un fichier `components.json`
   qui répertorie la version actuelle de tous les composants — voir [Guide pratique :
   trouver le dernier chargeur de démarrage](../how-to/find-latest-bootloader.md) pour
   savoir comment le lire.
4. Recherchez votre radio sous la rubrique `targets` de ce fichier pour connaître la
   version exacte du chargeur de démarrage à utiliser, puis repérez le fichier
   correspondant parmi les actifs de cette version.
5. Allumez la radio en [mode chargeur de démarrage](../getting-started/usb-connection-modes.md#bootloader-mode)
   (maintenez la touche `ENT` enfoncée, puis mettez sous tension) et connectez-la au PC
   à l'aide d'un câble USB.
6. Copiez le fichier du chargeur de démarrage sur la carte SD ou eMMC (normalement dans
   le dossier `Firmware/`), puis éjectez les lecteurs et déconnectez la radio.
7. Démarrez la radio normalement, allez dans **Système → Gestionnaire de fichiers**,
   appuyez sur le fichier `bootloader.frsk` que vous venez de copier et sélectionnez
   l'option **Flash bootloader**.
8. Téléchargez et installez Ethos Suite — la page [Utilisation](operation.md) décrit la
   mise à jour du micrologiciel et des fichiers ainsi que les autres fonctionnalités
   d'Ethos Suite à partir de ce point.
9. Si Ethos Suite ne le fait pas pour vous, il peut être nécessaire de renommer le
   dossier `bitmaps/user` de la carte SD ou eMMC en `bitmaps/models` (il s'agit du
   dossier dans lequel les bitmaps de modèles de l'utilisateur sont stockés).
