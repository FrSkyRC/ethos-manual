---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Widgets personnalisés

Au-delà des [types de widgets intégrés](index.md), des scripts Lua peuvent implémenter
des widgets entièrement personnalisés — généralement un seul fichier `main.lua`, conservé dans un
sous-dossier portant un nom qui suggère sa fonctionnalité.

## Installation

Copiez le sous-dossier du widget dans le dossier `scripts/` de la carte SD ou de l'eMMC (voir
[Gestionnaire de fichiers](../system-setup/file-manager.md#top-level-folders)). Le widget
s'enregistre automatiquement au démarrage suivant et apparaît dès lors dans
le sélecteur de catégories **Changer de widget** de [Configurer
les écrans](additional-displays.md), aux côtés des types intégrés — il se configure
exactement comme n'importe quel autre.

## Développement

Consultez [Scripts Lua → Structure de base d'un widget](../lua-scripts/basic-widget-layout.md)
pour connaître la structure de code qu'un script de widget doit implémenter.
