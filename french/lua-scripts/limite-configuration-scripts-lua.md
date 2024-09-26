# Limites de configuration des scripts Lua
-	2 Mo pour les bitmaps (un bitmap plein écran sur X20 consomme 768 Ko)
-	2 Mo pour les scripts Lua (c'est une grande quantité)

Évitez d'utiliser trop de RAM pour les cartes de bits. Il est suggéré aux utilisateurs d'utiliser le chargement paresseux = charger un bitmap UNIQUEMENT lorsque cela est nécessaire. Ensuite, gardez-le en mémoire pour la prochaine utilisation, afin d'éviter les lectures multiples de la carte SD ou de l'eMMC.
