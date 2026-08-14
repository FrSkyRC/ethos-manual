---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Mise en page de base d'un widget

Un widget Lua personnalisé (voir [Widgets personnalisés](../displays/custom-widgets.md)
pour la procédure d'installation) est construit à partir d'un petit ensemble de
champs et de gestionnaires nommés :

- **`key`** *(string)* — une clé unique identifiant le widget.
- **`name`** *(string ou function)* — le nom affiché du widget. Il peut
  s'agir simplement d'une chaîne de caractères, ou d'une fonction sans
  argument qui renvoie le nom du widget sous forme de chaîne — pratique
  lorsque le nom varie en fonction des paramètres régionaux.
- **`create`** *(function)* — appelée lors de la création du widget, sans
  argument. Elle renvoie la **table du widget**, qui sera ensuite passée à
  tous les autres gestionnaires ci-dessous — initialisez vos variables ici et
  stockez l'état dans cette table.
- **`configure`** *(function)* — appelée lorsque l'utilisateur entre dans la
  configuration du widget. Elle prend la table du widget renvoyée par
  `create()` comme seul argument et ne retourne rien. Vous pouvez créer ici
  le formulaire de configuration et l'utiliser pour modifier les valeurs dans
  la table du widget.
- **`wakeup`** *(function)* — appelée pendant chaque boucle, c'est-à-dire
  toutes les 50 ms environ. Elle prend la table du widget comme seul argument
  et ne renvoie rien. Elle doit vérifier si quelque chose a changé ; si oui,
  un rafraîchissement est nécessaire, et la fonction `invalidateWindow()`
  doit être appelée, ce qui provoquera l'appel de `paint()`. Vous devez vous
  assurer que ce gestionnaire est très rapide — idéalement en ne faisant rien
  du tout la plupart du temps.
- **`event`** *(function)* — appelée lorsqu'un événement est reçu ; Ethos
  offre la possibilité d'attraper n'importe quel événement dans un widget
  grâce à cette fonction.
- **`paint`** *(function)* — « dessine » le widget. Elle prend la table du
  widget comme seul argument et ne renvoie rien. Elle est appelée
  automatiquement chaque fois que `lcd.invalidate()` a été appelée. Elle peut
  être relativement lente, aussi ne redessinez que si quelque chose a changé.
- **`read`** *(function, en option)* — gestionnaire de lecture du stockage
  persistant du widget.
- **`write`** *(function, en option)* — gestionnaire d'écriture du stockage
  persistant du widget.
- **`init`** *(function)* — enregistre le widget et ses divers callbacks
  auprès d'Ethos. Vous pourriez avoir quelque chose comme ceci au bas de
  votre script :

```lua
local function init()
  system.registerWidget({
    key = "unique",
    name = name,
    create = create,
    configure = configure,
    wakeup = wakeup,
    paint = paint,
    read = read,
    write = write,
  })
end

return { init = init }
```

Notez que `key` doit être un identifiant unique parmi tous les widgets
installés ; les différentes fonctions répertoriées sont utilisées dans le
cycle de vie du widget, comme décrit ci-dessus.

Les scripts Lua sont stockés dans le dossier `scripts/` de la SD card ou de
l'eMMC, de préférence organisés en dossiers distincts par widget (voir
[Gestionnaire de fichiers](../system-setup/file-manager.md#top-level-folders)
et [Exemples d'emplacements de scripts](example-script-locations.md)). Pour
plus d'exemples concrets, veuillez vous référer au fil de discussion *FrSky
ETHOS Lua Script Programming* sur rcgroups.
