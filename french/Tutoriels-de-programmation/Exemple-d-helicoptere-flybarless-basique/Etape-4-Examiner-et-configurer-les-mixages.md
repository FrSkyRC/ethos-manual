### Étape 4. Examiner et configurer les mixages

img

Appuyez sur l'icône Mixer pour passer en revue les mixages créés par l'assistant Heli.

img

L'assistant a créé les ailerons, les gouvernes de profondeur, la manette des gaz et la dérive dans la séquence AETR (APGD) comme prévu, et a créé le tangage sur le canal 5 et le mode vol sur le canal 6.
Collective Pitch est normalement sur le canal 6. Confirmez que Pitch est sur le canal 6:


| canal  | mixage |
| ------------- | ------------- |
| CH6 | Pitch collectif |





Nous utiliserons la fonction des modes de vol Ethos, nous n'avons donc pas besoin d'un mixage de modes de vol. Appuyez sur la ligne de mixage du mode avion et sélectionnez Supprimer.
Nous avons également besoin d'ajouter des mixages supplémentaires pour Gyro Gain, FBL Bank et Rescue/Stabi. Appuyez sur une ligne de mixage et sélectionnez « Ajouter un mixage » pour ajouter les voies supplémentaires nécessaires à l'aide des mixages gratuits :

| canal  | mixage |
| ------------- | ------------- |
| CH5  | Gain gyroscopique |
| CH7  | Banque FBL |
| CH8  | Sauvetage / Stabi  |

img

#### Évaluer Aileron / Gouverne de profondeur / Gouvernail de direction
Rien n'a besoin d'être ajouté sur ces voies. Veuillez noter que les paramètres tels que les Débattements et l'exposition sont gérés par l'unité FBL, de sorte que la radio ne fait que transmettre les entrées de commande linéaires à l'unité FBL.

#### Configurer le gain gyroscopique

img

Le gain gyroscopique est généralement une valeur fixe, nous définissons donc la source sur Valeur spéciale - 0, puis augmentons la valeur de gain requise à l'aide du décalage. Il peut être nécessaire de déterminer la valeur du gain final en vol. Affectez le canal de sortie à 5.

#### Configurer le pas collectif
La hauteur collective n'est qu'une courbe linéaire en ligne droite, il vous suffit donc d'affecter le canal de sortie à 6. Veuillez noter que des éléments tels que les Débattements et l'expo sont pris en charge par l'unité FBL, de sorte que l'émetteur n'envoie que des entrées « propres ».

#### Configurer les phases de vol

img

Nous utiliserons les modes de vol pour configurer les trois modes de vol nécessaires pour Normal, Idle Up 1 et Idle Up 2. Pour notre exemple, nous avons renommé le « mode de vol par défaut » en « Normal » et ajouté deux modes de vol supplémentaires pour Idle Up 1 et 2 sur l’inter SD.

#### Configurer le mixage d'accélérateur
Le canal de manette des gaz sera contrôlé par trois courbes de manette des gaz pour les trois modes de vol, c'est-à-dire Normal, Idle Up 1 et Idle Up 2.

##### Courbe en mode normal

img

Le mode normal est utilisé pour la mise en bobine et le décollage, de sorte que la courbe commence à -100 % (moteur éteint), puis augmente en douceur pour le décollage. Il peut être nécessaire de déterminer les valeurs finales de la courbe en vol.

##### Ralenti courbe 1

img

Idle Up 1 est utilisé pour la plupart des vols. La courbe en ligne droite signifie que nous aurons un réglage constant de l'accélérateur pour maintenir les rotors en rotation à un rythme régulier. Il peut être nécessaire de déterminer la valeur finale de la manette des gaz en vol. Le mouvement de l'hélicoptère sera contrôlé par les commandes de pas collectif et d'aileron (roulis) et de profondeur (tangage).

Notez qu'il ne devrait pas y avoir de grand saut entre Normal et Idle Up 1, afin que la transition se fasse en douceur.

Notez également que la plupart des unités FBL offrent une fonction de régulation, qui garantit que la vitesse du rotor est maintenue constante même pendant les manoeuvres de vol agressives. Veuillez-vous référer au manuel Spirit FBL pour plus de détails.

##### Ralenti courbe 2

img

Idle Up 2 est utilisé pour les vols plus agressifs, par exemple la voltige et la 3D. Il peut être nécessaire de déterminer la valeur finale de la manette des gaz en vol.

##### Configuration du mixage d'accélérateur

###### Courbes d'accélérateur

img

Nous pouvons maintenant configurer le mixage des gaz pour les trois courbes des gaz, contrôlées par les modes de vol.

###### Coupe de l'accélérateur

img

Traduction française par Philippe Moreau (@philandroid) page 342 v1.5.10 rev1
Coupe de l'accélérateur
Si nous affectons l'interrupteur SG-up à la fonction Coupure gaz et qu'il est «sécurité armement» à 'ON', alors l'accélérateur sera coupé dès que vous basculerez l'interrupteur en position 'Up'. Cependant, en raison du réglage «sécurité armement», l'accélérateur ne peut être armé que du manche d'accélérateur en position basse (arrêt).

#### Configurer la combinaison FBL Bank

img

L'unité Spirit FBL dispose de trois banques de réglages qui peuvent être utilisées pour configurer différentes configurations. La commutation de banc est idéale pour passer d'un style de vol à l'autre, à différents gains de capteur pour les régimes bas ou élevés, ou pour les débutants, les acro ou la 3D. Alternativement, il peut être utilisé uniquement pour régler vos paramètres.

Nous allons assigner le mixage à l'interrupteur à 3 positions SE.

#### Configurer le mix Rescue / Stabi
De la même manière, le mixage Rescue peut être assigné à l'interrupteur SA par exemple.