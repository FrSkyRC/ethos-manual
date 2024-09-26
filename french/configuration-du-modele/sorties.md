# Sorties

![](<../.gitbook/assets/0 (6).jpeg>)

La section Sorties est l’interface entre la configuration "logique" et la réalité avec les servos, le contrôle des gouvernes aussi bien qu’avec les manches et les trims. Dans les mixages, nous avons mis en place ce que nous voulons que nos différents contrôles fassent. Cette section permet d'adapter ces sorties logiques pures aux caractéristiques mécaniques du modèle. C'est là que nous configurons les portées minimales et maximales, l'inversion du servo ou voies, et ajustons le neutre du servo ou de la voie à l'aide du réglage du subtrim, ou ajoutons un décalage à l'aide du subtrim. Nous pouvons également définir une courbe pour corriger les problèmes de réponse du monde réel. Par exemple, une courbe peut être utilisée pour s'assurer que les volets gauche et droit suivent avec précision. Les différentes voies sont des sorties, par exemple CH1 correspond à la prise servo #1 sur votre récepteur (avec les paramètres de protocole par défaut).

Bien que la radio soit configurée en utilisant des pourcentages comme entrée, les servos et les dispositifs de sortie sont contrôlés par un signal PWM (Pulse Width Modulation) en μs (microsecondes). La relation entre les unités est la suivante :

| −150 % | = | 732 μs  |
| ------ | - | ------- |
| −100 % | = | 988 μs  |
| 0%     | = | 1500 μs |
| 100%   | = | 2012 μs |
| 150%   | = | 2268 μs |

![](<../.gitbook/assets/1 (7).jpeg>)

L'écran Sorties affiche deux graphiques à barres pour chaque voie. La barre inférieure (verte) indique la valeur des mixages pour le canal, tandis que la barre supérieure (orange) indique la valeur réelle (en % et en μS) de la sortie après le traitement des sorties, qui est ce qui est envoyé au récepteur. Dans l'exemple ci-dessus, vous pouvez voir que les valeurs de mixage et de sortie pour CH4 Gaz sont à 100%.

Les voies qui ne sont pas transmis au module RF sont affichés avec un arrière-plan plus sombre. Dans l'exemple ci-dessus, les huit voies sont transmises, ils ont donc un arrière-plan gris plus clair.

Remarque : Pour un accès rapide à cet écran de moniteur, un appui long sur la touche Entrée de l'écran « Mixages » et des écrans « Phases de vol » permet d'accéder aux sorties.

**Configuration des sorties**

Appuyez sur la voie à modifier.

\
![](<../.gitbook/assets/2 (3).png>)

**Aperçu**

Un aperçu des voies s'affiche en haut de l'écran de configuration des sorties. La valeur des mixages est affichée en vert, tandis que la valeur de sortie du canal est affichée en orange (thème par défaut). Un petit marqueur blanc indique le point 100%.

_**Nom**_

Le nom peut être modifié.

**Direction**

Changera la direction de la sortie du canal, généralement pour inverser la direction du servo.

Veuillez noter que cela n'affecte pas les mixages qui pilotent la sortie, et n'intervertit pas non plus les limites min/max (voir ci-dessous).

**Min/Max**

Les paramètres min et max du canal sont des limites « strictes », c'est-à-dire qu'ils ne seront jamais remplacés. Ils doivent être réglés de manière à éviter le grippage mécanique. Notez qu'ils servent de paramètres de gain ou de « point final », de sorte que la réduction de ces limites réduira la projection plutôt que d'induire un écrêtage.

Notez que les limites par défaut sont de +/- 100,0 %, mais peuvent être augmentées ici à +/- 150,0 %.

_**Avertissement:**_

Lors de l'utilisation d'un système de redondance impliquant SBUS, les mouvements d'asservissement au-delà d'environ +/- 125% ne sont pas possibles.

Remarque : Les paramètres Min/Max ont des plages de (-150 % à 0 %) et (0 % à +150 %) respectivement. Lorsque vous utilisez des VAR comme source pour ajuster les paramètres Min/Max, à moins que la Var n'ait une plage identique, il sera nécessaire de définir la plage Var à ignorer pour éviter les valeurs inattendues dues à la conversion de plage. Veuillez vous référer à la section Options Var pour plus de détails sur cette option.

![](<../.gitbook/assets/3 (2).png>)

En cas d'utilisation de plus de 125 % sur le récepteur principal pilotant les sorties PWM, et que ce récepteur entre en sécurité intégrée, les positions d'asservissement alors reçues d'un récepteur redondant via SBUS sont limitées à 125 %.

En particulier, si une sortie sur le récepteur principal est supérieure à 125 %, au moment de passer au récepteur redondant, la sortie passera à 125 %.

**Aide à l'installation**

![](<../.gitbook/assets/4 (8).jpeg>)

Lors du réglage des limites de sortie min/max, la fin à ajuster est mise en surbrillance en gras.

Par exemple, si vous souhaitez définir l'extrémité de l'aileron droit, lorsque vous déplacez légèrement le manche de l'aileron vers la droite, la valeur maximale s'affiche en gras pour indiquer qu'il s'agit de l'extrémité à ajuster. Si vous déplacez le manche vers la gauche, la valeur minimale sera en gras.

**Centre/Subtrim**

Utilisé pour introduire un décalage sur la sortie, généralement utilisé pour centrer un bras de servo. Notez que les points de terminaison ne sont pas affectés.

_**Avertissement:**_

Ne soyez pas tenté d'utiliser Subtrim pour ajouter de grands décalages - il construira une grande quantité de différentiel dans la réponse du servo. La bonne méthode consiste à ajouter un mixage décalé.

**Centre PWM**

Ceci est similaire au subtrim, à la différence qu'un réglage effectué ici décalera toute la bande de mouvement du servo (y compris les limites strictes). Ce réglage ne sera pas visible sur le moniteur de canal car il est effectivement effectué dans le servo. L'avantage de l'utilisation du « centre PWM » pour centrer mécaniquement la surface de contrôle est que cela sépare la fonction de centrage de la fonction de trim.

**Courbe**

Permet de sélectionner une courbe Expo ou personnalisée pour conditionner la sortie. La popup permet soit de sélectionner une courbe existante, soit d'en ajouter une nouvelle. Après avoir configuré la courbe, un bouton Modifier est ajouté afin que vous puissiez modifier facilement la courbe.

Les courbes sont un moyen plus rapide et plus flexible de configurer les limites centrales et min/max des sorties, et vous obtenez un beau graphique. Utilisez une courbe à 3 points pour la plupart des sorties, mais utilisez une courbe à 5 points pour des éléments tels que le deuxième aileron et les volets, afin de pouvoir synchroniser la course en 5 points. Lors de l'utilisation d'une courbe, il est recommandé de laisser Min, Max et Subtrim à leurs valeurs de passage de -100, 100 et 0 respectivement (ou -150, 150 et 0 si vous utilisez des limites étendues).

**Ralentir/ralentir**

La réponse de la sortie peut être ralentie en ce qui concerne le changement d'entrée. Slow pourrait par exemple être utilisé pour ralentir les rentrées qui sont actionnées par un servo proportionnel normal. La valeur est le temps en secondes qu'il faudra à la sortie pour couvrir la plage de -100 à +100 %.

_**Retarder**_

Veuillez noter qu'une fonction de retard est disponible sous les interrupteurs logiques.

**Echanger voies**

![](<../.gitbook/assets/5 (4).png>)

Cette fonction permet d’inverser deux canaux de sortie.

![](<../.gitbook/assets/6 (4).png>)

La boîte de dialogue d'échange s'ouvre avec le premier canal déjà rempli. Sélectionnez le canal à permuter, puis cliquez sur OK. Notez que l'échange a lieu immédiatement

**Réinitialiser les paramètres**

![](<../.gitbook/assets/7 (4).jpeg>)\
La réinitialisation des paramètres effacera tous les paramètres du canal de sortie si le canal n'est plus nécessaire. Une boîte de dialogue de confirmation permet d'éviter toute réinitialisation accidentelle.\
Cela évitera que les paramètres ne soient pas à leurs valeurs par défaut si le canal est réutilisé pour autre chose.
