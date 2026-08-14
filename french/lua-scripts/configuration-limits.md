---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Limites de configuration

- **2 Mo** pour les bitmaps (un seul bitmap plein écran sur X20 consomme
  à lui seul environ 768 Ko).
- **2 Mo** pour les scripts Lua — c'est une grande quantité en pratique.

!!! tip "Bitmaps dans les scripts"
    Évitez d'utiliser trop de RAM pour les données bitmap. Privilégiez le
    **chargement paresseux** (lazy loading) — ne chargez un bitmap
    UNIQUEMENT que lorsque cela est nécessaire, puis gardez-le en mémoire
    pour la prochaine utilisation, afin d'éviter les lectures multiples
    de la SD card ou de l'eMMC.
