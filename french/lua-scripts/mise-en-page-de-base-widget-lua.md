 # Mise en page de base d'un widget Lua
Un widget Lua personnalisé a la structure de base suivante : 

**key (string)**
Le widget doit avoir une clé unique. 

**Name (string ou function)**
La fonction name ne prend aucun argument et renvoie le nom du widget sous forme de chaîne. Le nom peut simplement être une chaîne de caractères ou le résultat d'une fonction. Par exemple, le nom peut être dans une langue différente en fonction des paramètres régionaux.

**create (function)**
La fonction de gestionnaire de création est appelée lors de la création du widget. Il ne prend pas d'arguments et renverra la table des widgets qui sera ensuite passée à toutes les fonctions. Initialisez vos variables ici et stockez l'état dans la table de widgets renvoyée.

**configure (function)**
La fonction configure handler est appelée lorsque l'utilisateur entre dans la configuration du widget. Il prend la table de widgets renvoyée par create() comme seul argument et ne retourne rien. Il est appelé lorsque l'utilisateur entre dans la configuration du widget. Ici, vous pouvez créer le formulaire de configuration et l'utiliser pour modifier les valeurs dans le tableau des widgets.

**wakeup (function)**
La fonction de gestionnaire de réveil est appelée pendant chaque boucle, c'est-à-dire toutes les 50 ms. Il prend la table des widgets comme seul argument et ne renvoie rien.
La fonction wakeup() devrait vérifier si quelque chose a changé. Si oui, un rafraîchissement est nécessaire, donc la fonction invalidateWindow() doit être appelée. Cela provoquera l'appel de la fonction paint(). Vous devez vous assurer que cette fonction est très rapide, idéalement en ne faisant rien la plupart du temps.

**event (function)**
La fonction de gestionnaire d'événements appelée lorsqu'un événement est reçu. ETHOS offre la possibilité d'attraper n'importe quel événement dans un widget, grâce à cette fonction d'événement.

**paint (function)**
La fonction paint 'dessine' le widget. Il prend la table des widgets comme seul argument et ne renvoie rien. Elle doit être appelée lorsqu'un rafraîchissement est nécessaire, et est automatiquement appelée chaque fois que lcd.invalidate() a été appelée. Cela peut être lent, alors ne peignez que si quelque chose a changé.

**read (function)**
Gestionnaire de lecture en option. Dans ETHOS, il est possible d'utiliser le stockage comme l'utilisateur le souhaite. 

**write (function)**
Gestionnaire d'écriture en option. Dans ETHOS, il est possible d'utiliser le stockage comme l'utilisateur le souhaite. 

**init(function)**
La fonction init est utilisée pour enregistrer le widget et divers callbacks. Vous pourriez avoir quelque chose comme ceci au bas de votre script :

Code:

local function init() system.registerWidget({   
key = « unique »,   
name = nom,  
create = create,   
configure = configure,   
wakeup = wakeup,   
paint = paint,   
read = read,   
write = write,  
}) fin  

return { init = init }  
Notez que 'key' est un identifiant unique pour votre widget. Les différentes fonctions répertoriées sont utilisées dans le cycle de vie du widget.  
Les scripts Lua sont stockés dans le dossier scripts/ de la carte SD ou eMMC, de préférence organisés en dossiers.  
Pour plus d'informations, Veuillez-vous référer au fil de discussion 'FrSky ETHOS Lua Script Programming'.
