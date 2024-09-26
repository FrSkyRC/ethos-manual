### Étape 4. Examiner et configurer les mixages

img

Appuyez sur l'icône Mixes pour consulter les mixages créés par l'assistant Airplane.

img

L'assistant a créé deux ailerons sur les voies 1 et 5, suivis des voies Profondeur, Accélérateur, Gouvernail et Volets. Remarque : pour les volets, le '—-' indique qu'aucune source de contrôle ne leur a encore été attribuée.


img

### Ailerons
Pour consulter le mixage des ailerons, appuyez sur la ligne Ailerons et sélectionnez Modifier dans le menu contextuel.

img

##### Débattement
C'est une bonne idée de configurer les Débattements sur votre modèle, surtout si vous ne l'avez jamais piloté auparavant. Les taux définissent le rapport entre le mouvement du manche et le mouvement du canal. Par exemple, pour le vol sportif, vous voulez normalement des lancers assez modestes sur les gouvernes, vous voudrez donc peut-être réduire le débattement à 30 %. D'autre part, pour le vol 3D, vous voulez autant de débattement que possible, c'est-à-dire 100%. Dans la capture d'écran ci-dessus, un taux de 60 % a été défini pour l’inter SB en position médiane. L'axe vertical du graphique de droite montre que seulement 60 % de la projection est disponible.

img

Cliquez sur « Ajouter un nouveau Débattement » et configurez un taux de 30 % pour l'interrupteur SB en position basse. L'axe vertical du graphique de droite montre maintenant que seulement 30 % de la projection est disponible dans cette position d'aiguillage.

img

##### Expo
Dans les exemples de taux ci-dessus, vous pouvez voir que la réponse de sortie est linéaire. Pour éviter que la réponse ne soit trop nerveuse au centre du manche, vous pouvez utiliser une courbe Expo pour réduire le mouvement de la surface de contrôle au niveau du manche central et l'augmenter à mesure que le manche s'éloigne du centre. Pour cet exemple, nous avons défini trois taux d'exposition à 60 %, 40 % et 25 % sur les positions de l’inter SB correspondantes, et le graphique montre maintenant une réponse incurvée qui est plus plate au centre du manche.#### 

img

##### Différentiel
Pour les ailerons, il existe un autre réglage spécial appelé différentiel. Si les ailerons gauche et droit se déplacent vers le haut ou vers le bas de la même manière, l'aileron qui se déplace vers le bas causera plus de traînée que l'aileron qui se déplace vers le haut, ce qui entraînera un lacet de l'aile dans la direction opposée au virage. C'est ce qu'on appelle le lacet adverse. Pour réduire cela, une valeur positive dans le réglage Différentiel se traduira par moins de mouvement des ailerons vers le bas, comme on peut le voir sur le graphique. Cela réduira le lacet défavorable et améliorera les caractéristiques de virage/maniabilité. Le réglage courant du différentiel des ailerons est de 50 %.

img

Cependant, vous pouvez assigner le différentiel à un potentiomètre, ce qui vous permet d'optimiser la valeur en vol. Appuyez longuement sur Entrée pour afficher la boîte de dialogue Options, puis sélectionnez « Utiliser une source ».

img

Choisissez Pot1 dans la liste des sources. Vous pouvez voir l'effet de Pot1 dans le graphique de droite.

img

Après avoir optimisé le différentiel des ailerons en vol, vous pouvez facilement faire de la valeur du potentiomètre votre réglage permanent. Appuyez longuement sur Entrée pour afficher la boîte de dialogue Options, puis sélectionnez « Convertir en valeur ».

##### Trim
Permet de déconnecter le trim associé à un mixage sans le désactiver, afin qu'il puisse être utilisé ailleurs.

##### Gouverne de profondeur et gouvernail

img

De la même manière que pour les ailerons, nous pouvons configurer des taux triples et une exposition pour la profondeur et la dérive sur l'interrupteur SC.

##### Gaz

img

Pour l'accélérateur, nous laisserons l'entrée sur le manche des gaz. Nous n'avons pas besoin de Débattements ou d'expo, mais nous avons besoin d'un interrupteur de sécurité pour que le moteur ne démarre pas de manière inattendue. Ceci est extrêmement important, car les modèles de moteurs et de moteurs peuvent causer des blessures graves ou la mort.

##### Coupure gaz

img

La coupure de l'accélérateur fournit un mécanisme de verrouillage de sécurité de l'accélérateur. Une fois que la condition active a été satisfaite dans notre exemple avec l’inter SA en position basse (switch SA down est indiqué en gras pour indiquer qu'il est actif), la sortie de l'accélérateur sera maintenue à -100 % une fois que la valeur de l'accélérateur tombera en dessous de -85 %. (Comparez le premier graphique ci-dessus avec le second.)

img

Cependant, si la «sécurité armement» est activée, l'accélérateur sera coupé et l'interrupteur instantané SA descendra comme le montre l'exemple ci-dessus.
Une fois que la condition active a été supprimée (c'est-à-dire que l'interrupteur SA n'est pas en position basse), le manche des gaz ou la commande doit être abaissé en dessous de -85 % avant de pouvoir être augmenté. Cela permet d'éviter que le moteur ne démarre inopinément à une position d'accélérateur élevée lorsque la coupure de l'accélérateur sur l'interrupteur SA est relâchée.

##### Trim en position basse

img

Pour la lueur et le gaz, nous utilisons le « trim en position basse » pour régler le régime de ralenti. Le régime de ralenti peut varier en fonction des conditions météorologiques, etc., il est donc important d'avoir un moyen d'ajuster le régime de ralenti sans affecter la position de plein gaz.
Si l'option « Trim en position basse » est activée, le canal d'accélérateur passe en position de ralenti de -75 % lorsque le manche des gaz est en position basse, comme le montre l'exemple ci-dessus.
. Le levier de trim de l'accélérateur peut alors être utilisé pour régler le régime de ralenti entre -100 % et -50 %. Gaz Cut peut ensuite être configuré pour couper le moteur à l'aide d'un interrupteur.

##### Maintien de l'accélérateurimg

img

Le « maintien de l'accélérateur » est utilisé pour couper le moteur en cas d'urgence à partir de n'importe quelle position de l'accélérateur. Lorsque la condition de maintien de l'accélérateur active est remplie, la sortie de l'accélérateur est instantanément réduite à -100 % (ou à la valeur saisie). Comme on peut le voir dans le graphique ci-dessus, la sortie de l'accélérateur a été réduite à -100 % même si le manche des gaz est au-dessus de la marque à mi-chemin.)

##### Volets

img

Dans cet exemple, nous affectons les volets à l'interrupteur SE et augmentons les Débattement des deux voies de sortie à 100 %.

