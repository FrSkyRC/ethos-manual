---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Scripts Lua

Les scripts Lua vous permettent de créer des [widgets d'affichage](../displays/custom-widgets.md)
personnalisés pour afficher des informations qu'Ethos ne gère pas nativement, ainsi que
(par modèle) des [sources et tâches](../model-setup/lua-scripts.md) personnalisées — une base
qu'il est prévu d'étoffer davantage, vers des fonctions spécialisées pour des tâches
personnalisées et l'intégration des contrôleurs de vol.

Le langage de script Lua est en soi un langage de script généraliste léger et intégrable,
conçu pour être utilisé pour toutes sortes d'applications, des jeux aux applications Web ;
Ethos l'intègre précisément pour ce type de personnalisation directement sur la radio.

!!! warning
    Veuillez noter que les scripts Lua augmentent le temps de démarrage de la radio. S'ils
    sont mis en œuvre correctement, le retard ne devrait pas être perceptible — mais si ce
    n'est pas le cas, le retard peut être presque indéfini.

- [Interpréteur Lua](lua-interpreter.md) — quelle version de Lua et quelles bibliothèques
  Ethos intègre.
- [Documentation Lua d'Ethos](ethos-lua-documentation.md) — où se trouve la référence
  complète de l'API.
- [Emplacements des scripts d'exemple](example-script-locations.md) — où trouver et
  télécharger des exemples fonctionnels.
- [Limites de configuration](configuration-limits.md) — budgets mémoire pour les images
  bitmap et les scripts.
- [Structure de base d'un widget](basic-widget-layout.md) — la structure de code
  nécessaire à un script de widget personnalisé.
