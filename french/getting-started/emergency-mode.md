---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Mode d'urgence

Le mode d'urgence est la réponse d'Ethos à une défaillance inattendue de bas niveau, telle qu'une réinitialisation par le chien de garde (watchdog). Le chien de garde est un temporisateur continuellement relancé par différentes parties du système ; si quelque chose empêche sa relance, il arrive à expiration et force une réinitialisation matérielle. Le mode d'urgence redémarre alors la radio le plus rapidement possible, en ignorant tous les contrôles de démarrage habituels, afin que le contrôle du modèle soit restitué avec un délai minimal. Dans ce mode, la SD card/eMMC n'est absolument pas sollicitée.

Seules les fonctions essentielles au pilotage du modèle restent disponibles — aucune des fonctionnalités de plus haut niveau. L'écran devient vide, à l'exception de la mention **EMERGENCY MODE**, accompagnée d'un bip répétitif de 300 ms toutes les 3 secondes ; les alertes vocales, les scripts Lua, l'enregistrement des données et la télémétrie sont tous interrompus. Si cela se produit en vol, atterrissez dès que possible.

La cause la plus fréquente est une défaillance de la SD card.

## Tester le mode d'urgence

Un **outil système** peut être ajouté afin de déclencher volontairement le mode d'urgence à des fins de test, pour ne pas avoir à le découvrir pour la première fois en vol. Toucher l'icône Emergency Test demande une confirmation, puis place la radio en mode d'urgence exactement comme le ferait une défaillance réelle.
