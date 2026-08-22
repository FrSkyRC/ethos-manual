---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Mode d'urgence

Le mode d'urgence est la réponse d'Ethos à une défaillance inattendue de bas niveau, telle qu'une réinitialisation par le chien de garde (watchdog). Le chien de garde est un temporisateur continuellement relancé par différentes parties du système. Si quelque chose empêche sa relance, il arrive à expiration et force une réinitialisation matérielle. Le mode d'urgence redémarre alors la radio le plus rapidement possible, en ignorant tous les contrôles de démarrage habituels, afin que le contrôle du modèle soit restitué avec un délai minimal. Dans ce mode, la SD card/eMMC n'est absolument pas sollicitée.

Seules les fonctions essentielles au pilotage du modèle restent disponibles. Aucune des fonctionnalités de haut niveau n'est disponible. L'écran devient vide, à l'exception de la mention EMERGENCY MODE, et un bip de 300 ms retentit toutes les 3 secondes. Les alertes vocales, les scripts Lua, l'enregistrement des données et la télémétrie sont alors interrompus. Si cela se produit en vol, atterrissez dès que possible.

La cause la plus fréquente est une défaillance de la SD card.

## Tester le mode d'urgence

Un **outil système** peut être ajouté afin de déclencher volontairement le mode d'urgence à des fins de test, pour ne pas avoir à le découvrir pour la première fois en vol. Toucher l'icône Emergency Test demande une confirmation, puis place la radio en mode d'urgence exactement comme le ferait une défaillance réelle.
