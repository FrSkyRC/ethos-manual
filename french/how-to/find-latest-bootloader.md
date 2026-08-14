---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Trouver le dernier bootloader ou autre composant

Les versions du firmware Ethos publient un fichier `components.json` qui recense la version actuelle de chaque composant pour chaque radio, ce qui permet de vérifier si une version donnée du bootloader, du firmware, des fichiers audio ou des fichiers système est réellement à jour avant de la flasher.

!!! note "Captures d'écran à venir"
    Cette page ne comporte pas encore de captures d'écran du simulateur — voir [Chaîne de production des captures d'écran](../contributing/screenshot-pipeline.md).

1. Téléchargez le fichier `components.json` depuis la dernière version d'Ethos.
2. Ouvrez-le dans un éditeur de texte (VS Code, Notepad, etc.).
3. Repérez la section correspondant à votre radio — par exemple `X20` :

   ```json
   {
     "targets": ["X20", "X20S", "X18", "X18S", "XE", "XE-S", "X20 Pro"],
     "components": [
       { "name": "bootloader", "version": "1.4.15" },
       { "name": "firmware", "version": "1.6.1" },
       { "name": "audio", "version": "1.6.1" },
       { "name": "system_files", "version": "1.6.1" }
     ]
   }
   ```

   (Il s'agit d'un exemple figé — consultez toujours le fichier de la version *actuelle* pour connaître les véritables numéros de version.)

4. Relevez la version du composant qui vous intéresse — dans l'exemple ci-dessus, le dernier bootloader pour la famille X20 est le `1.4.15`.

Consultez [Gestionnaire de fichiers](../system-setup/file-manager.md#top-level-folders) pour savoir où placer le fichier de firmware téléchargé, et [Modes de connexion USB](../getting-started/usb-connection-modes.md#bootloader-mode) pour faire passer la radio en mode bootloader afin de le flasher — ou utilisez [Ethos Suite](../ethos-suite/index.md), qui gère automatiquement la vérification des versions et le flashage.
