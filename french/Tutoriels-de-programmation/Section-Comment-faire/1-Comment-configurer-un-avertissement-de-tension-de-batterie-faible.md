### 1. Comment configurer un avertissement de tension de batterie faible
À l'ère de la télémétrie, une meilleure approche de gestion de la batterie consiste à surveiller la tension de la batterie sous charge et à déclencher une alerte lorsque la tension tombe en dessous du seuil choisi. Pour cela, il est possible d'utiliser un capteur de tension de batterie tel que le FrSky FLVSS.

img

Dans Options du récepteur, définissez le port de télémétrie sur l'option S.Port. Connectez le FLVSS à votre récepteur via un câble S.Port et activez l'option « Découvrir de nouveaux capteurs » dans Modèle / Télémétrie. Le capteur LiPo supplémentaire est illustré dans l'exemple ci-dessus.

img

Ajoutez un nouveau inter logique et sélectionnez le capteur Lipo comme source.

img

Avec le capteur Lipo en surbrillance, appuyez longuement sur la touche [ENT] pour afficher une boîte de dialogue d'options.

Sélectionnez le plus bas dans la liste des options de capteur Lipo, qui comprend la tension minimale du pack, la tension maximale du pack, la tension de cellule la plus basse, la tension cellulaire la plus élevée, le nombre de cellules et les tensions cellulaires individuelles.

Remarque : Les cellules individuelles ne peuvent être sélectionnées qu'en tant que sources lorsque le FLVSS/MLVSS est connecté à un récepteur lié et qu'une lipo est connectée !

img

Réglez la valeur sur quelque chose comme 3,4 V et « Délai avant l'activation » sur 4 secondes. L’inter logique devient Vrai/Actif lorsque la tension de cellule la plus basse reste inférieure à 3,4 par cellule pendant 4 secondes ou plus. Un seuil de 3,4 V en charge reviendra à environ 3,7 V lorsqu'il ne sera plus en charge.

img

L’inter logique terminé pour batterie faible est illustré ci-dessus.

img

Ajoutez une fonction spéciale pour énoncer la valeur de la tension totale LiPo toutes les 5 secondes lorsque sa valeur tombe en dessous du seuil de 3,4 V par cellule pendant 4 secondes, comme configuré dans l’inter logique ci-dessus.
Définissez la condition active sur l’inter logique BattLow. Sélectionnez la voix que vous souhaitez utiliser.

img



img

Sous 'Séquence', ajoutez une commande 'Play value' pour énoncer la tension Lipo.
