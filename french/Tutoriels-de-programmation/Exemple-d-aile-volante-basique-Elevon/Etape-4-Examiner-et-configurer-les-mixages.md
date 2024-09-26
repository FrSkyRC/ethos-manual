### Étape 4. Examiner et configurer les mixages

img

Appuyez sur l'icône Mixes pour consulter les mixages créés par l'assistant Airplane.

img

L'assistant a créé un mixage Ailerons sur les voies 1 et 2, suivi d'un mixage Elevators également sur les voies 1 et 2. Cela signifie que les deux commandes d'entrée agiront sur les deux voies d'élévation.

#### Ailerons
Pour consulter le mixage des ailerons, appuyez sur la ligne Ailerons et sélectionnez Modifier dans le menu contextuel.

img

##### Débattement
Si l'on se réfère au manuel de la 'Weasel' (belette), les flèches recommandées pour l'aileron sont environ 3 fois supérieures à celles de la gouverne de profondeur. Nous voulons des masses combinées de 100 %, donc le Débattement des ailerons devrait être de 75 % et la profondeur de 25 %.

Selon le manuel de la 'Weasel' (belette), les taux bas devraient être d'environ 50% des taux élevés. Par conséquent, nous utiliserons 36 % pour les faibles taux d'ailerons et 12 % pour les faibles taux de profondeur.

##### Expo

img

Dans les exemples de taux ci-dessus, vous pouvez voir que la réponse de sortie est linéaire. Pour éviter que la réponse ne soit trop nerveuse au centre du manche, vous pouvez utiliser une courbe Expo pour réduire le mouvement de la surface de contrôle au niveau du manche central et l'augmenter à mesure que le manche s'éloigne du centre. Les valeurs d'Expo recommandées par 'Weasel' (belette) sont de 35 % pour le haut et de 20 % pour le bas, nous allons donc ajouter une courbe qui sera active sur la position bas de l'interrupteur SB. Le graphique montre maintenant une réponse incurvée qui est plus plate au centre du manche.

img

Pour les ailerons, il existe un autre réglage spécial appelé différentiel. Si les ailerons gauche et droit se déplacent vers le haut ou vers le bas de la même manière, l'aileron qui se déplace vers le bas causera plus de traînée que l'aileron qui se déplace vers le haut, ce qui entraînera un lacet de l'aile dans la direction opposée au virage. C'est ce qu'on appelle le lacet adverse. Pour réduire ce phénomène, une valeur positive dans le réglage du différentiel se traduira par moins de mouvement des ailerons vers le bas, ce qui réduira le lacet défavorable et améliorera les caractéristiques de virage/maniabilité. Le différentiel recommandé par 'Weasel' (belette) est assez faible et équivaut à environ 4 %.

#### Profondeur

img

De la même manière que pour les ailerons, nous pouvons mettre en place des Débattements et une exposition pour l'ascenseur. Nous utiliserons des taux/Débattement de profondeur de 25 % et 12 %. Nous utiliserons les mêmes valeurs d'Expo que pour les ailerons.

#### Dérive
La 'Weasel' (belette) n'a pas de gouvernail, elle n'en a vraiment pas besoin. D'autres modèles d'élévation peuvent nécessiter un gouvernail, auquel cas un mixage libre doit être utilisé pour ajouter un gouvernail sur le canal 3.

img