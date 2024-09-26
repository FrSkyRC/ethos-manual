### 10. Comment configurer une courbe de compensation des volets réglable en vol

#### Aperçu

##### La nécessité d'une compensation entre les volets et la gouverne de profondeur

Lorsqu'un planeur ou un avion déploie ses volets, le changement de portance de l'aile provoque la montée de l'avion à aile haute et la descente des avions à aile basse. Pour compenser, une certaine correction de la profondeur est nécessaire.

##### Approche adoptée

Ethos a la capacité d'ajuster les points d'une courbe à l'aide de Variables. Cela ouvre la possibilité d'ajuster les différents points d'une courbe de compensation en vol, ce qui facilite grandement le réglage par exemple d'une courbe de compensation des volets à la gouverne de profondeur.
Dans cet exemple, nous allons réutiliser le trim de manette des gaz pour ajuster les points le long d'une courbe de compensation qui est appliquée à la gouverne de profondeur. Les points ajustés dépendent de la position du manche des volets, de sorte que la compensation peut être ajustée en vol pour des quantités variables de volets.

#### Étape 1 : Sélectionner un type de courbe pour la courbe de compensation

Une courbe à 5 points fournira
img

En partant de la droite, le point numéro 5 est toujours égal à zéro, ce qui signifie qu'aucune compensation n'est appliquée lorsque le manche est complètement sorti (à +100%) et qu'aucun volets n'est sorti.
Les 4 autres points de la courbe seront ajustables à l'aide de Variables.
Nous devons également tenir compte du fait que le manche des volets peut être proche d'être entre deux points de la courbe de compensation, auquel cas nous devons ajuster les deux points en même temps.

#### Étape 2 : Calculez les plages de chevauchement pour les points de réglage de la courbe de compensation.

img

Veuillez-vous référer au schéma ci-dessus pour connaître les plages de chevauchement choisies pour les points de réglage de la courbe de compensation. Ces gammes ont été définies par Mike Shellim pour son « Crow-aware adaptive elevator trim » développé pour OpenTX (voir rc-soar.com) et sont utilisés avec son aimable autorisation.

J'ai fait une petite modification pour étendre la plage Pt2 jusqu'à +100% pour des raisons expliquées plus bas.

Lorsque le manche à volets est déployé, à partir de +100% vers le bas, le point de courbe 2 est le premier à être actif et réglable. Ensuite, lorsque le manche des volets est compris entre +45 % et 20 %, les deux points 2 et 3 seront ajustés simultanément. Lorsque le manche des volets est compris entre +20% et -20%, seul le point 3 sera ajusté. Ensuite, lorsque le manche des volets est compris entre -20% et -45%, les deux points 3 et 4 seront réglés simultanément. Lorsque le manche des volets est compris entre -45 % et -90 %, seul le point 4 sera ajusté. Enfin, lorsque le manche des volets est compris entre -90% et -100%, seul le point 5 sera ajusté.

#### Étape 3 : Configurer les commutateurs logiques pour les points de réglage de la courbe de compensation

Pour chacun des quatre points réglables de la courbe, nous devons configurer un commutateur logique qui sera actif lorsque le manche à volet se trouve dans sa plage définie.

img

- LSW AdaptivePt2: intervalle = 20 to 100% 
- LSW AdaptivePt3: intervalle = -45 to 45% 
- LSW AdaptivePt4: intervalle = -90 to -20% 
- LSW AdaptivePt5: intervalle = -100 to -90%

img

Configurez un interrupteur logique AdaptivePt2 avec le manche des volets (c'est-à-dire l'accélérateur) comme source, et une plage de 20 % à 100 %. Porter l’intervalle jusqu'à 100% permet de régler le point 2 même sans volets. Veuillez-vous référer à l'explication de configuration à l'étape 6 ci-dessous.

img

Configurez un interrupteur logique AdaptivePt3 avec le manche des volets (c'est-à-dire l'accélérateur) comme source, et une plage de -45 % à 45 %.

img

Set up a logic switch AdaptivePt4 with the flap (i.e throttle) stick as source, and a range of -90% to -20%.

img


Configurez un interrupteur logique AdaptivePt5 avec le manche des volets (c'est-à-dire l'accélérateur) comme source, et une plage de -100 % à -90 %.

#### Étape 4 : Définissez les quatre variables qui contiennent les valeurs d'ajustement du point de la courbe

L'étape suivante consiste à définir les quatre VAR qui seront ajustés par le trim d'accélérateur réutilisé lorsque chaque commutateur logique correspondant est actif. Les interrupteurs logiques s'activent au fur et à mesure que le volet traverse la plage définie de chaque interrupteur logique.

img

La capture d'écran ci-dessus montre les quatre Vars nommées VAdjPt2 à VAdjPt5, que nous allons configurer ci-dessous.

img

Le Var nommé VAdjPt2 a une fourchette de 0 à 50 % (ce qui devrait être suffisant pour la compensation, mais peut être augmenté si nécessaire). Il dispose d'une action définie pour réutiliser le trim de l'accélérateur afin d'ajuster la valeur de la var avec une taille de pas de 1,0 % lorsque le commutateur logique AdaptivePt2 défini à l'étape 4 ci-dessus est actif. (Remarque : il sera actif lorsque la commande des volets a une valeur comprise entre 20 % et 90 %.)

img

Le Var nommé VAdjPt3 a une fourchette de 0 à 50 % (ce qui devrait être suffisant pour la compensation, mais peut être augmenté si nécessaire). Il a une action définie pour réutiliser le trim de l'accélérateur afin d'ajuster la valeur de la Var avec une taille de pas de 1,0 % lorsque le commutateur logique AdaptivePt3 défini à l'étape 4 ci-dessus est actif. (Remarque : il sera actif lorsque la commande des volets a une valeur comprise entre -45 % et 45 %.)

img

Le Var nommé VAdjPt4 a une fourchette de 0 à 50 % (ce qui devrait être suffisant pour la compensation, mais peut être augmenté si nécessaire). Il dispose d'une action définie pour réutiliser le trim de l'accélérateur afin d'ajuster la valeur de la Var avec une taille de pas de 1,0 % lorsque le commutateur logique AdaptivePt4 défini à l'étape 4 ci-dessus est actif. (Remarque : il sera actif lorsque la commande des volets a une valeur comprise entre -90 % et -20 %.)

img

Le Var nommé VAdjPt5 a une fourchette de 0 à 50 % (ce qui devrait être suffisant pour la compensation, mais peut être augmenté si nécessaire). Il a une action définie pour réutiliser le trim de l'accélérateur afin d'ajuster la valeur de la var avec une taille de pas de 1,0 % lorsque le commutateur logique AdaptivePt5 défini à l'étape 4 ci-dessus est actif. (Remarque : elle sera active lorsque la commande de volet a une valeur comprise entre -100 % et -90 %.)

#### Étape 5 : Définir la courbe de compensation

img

Nous avons déterminé à l'étape 1 qu'une courbe à 5 points est appropriée.

Créez une nouvelle courbe personnalisée nommée par exemple EleComp, avec 5 points. Activez l'option de lissage pour que la compensation change en douceur.

img

Appuyez longuement sur Entrée sur chacun des points de valeur de courbe 1 à 4 et utilisez l'option « Utiliser une source » pour affecter les variables VAdjPt5 à VAdjPt2 comme indiqué dans l'exemple ci-dessus.

#### Étape 6 : Appliquez la courbe dans votre application

La courbe de compensation peut maintenant être appliquée dans votre application.

C'est très utile lorsqu'il y a des données disponibles (peut-être dans les forums rcgroups, ou les directives du constructeur de l'avion) quant à la quantité de course de l'ascenseur nécessaire par rapport à la quantité de mouvement des volets vers le bas. La courbe de compensation doit être préchargée avec quelques valeurs de départ. Si vous n'avez pas de recommandations de configuration pour votre avion, quelques millimètres de compensation à pleins volets peuvent être un point de départ raisonnable.

Une approche prudente est nécessaire lors du réglage de la compensation. Commencez avec de petites quantités de flap et de petites quantités de trim ! Gardez à l'esprit que l'AdaptivePt2 peut être ajusté même si les volets ne sont pas déployés. Cela signifie que vous pouvez appliquer un peu de rabats, puis les retirer à nouveau pendant que vous composez un peu de compensation.

C'est moins stressant que d'avoir à composer rapidement une compensation pendant que l'avion monte ou descend. Vous pouvez ensuite réappliquer un peu de flap et vérifier si la compensation est correcte ou nécessite un ajustement supplémentaire.

Une fois que le point de réglage de la courbe de compensation 2 a été réglé, passez au point suivant à peu près au milieu du manche. Si une grande quantité d'assiette était nécessaire pour le point 2, il peut être prudent d'atterrir et d'ajuster les autres points pour qu'ils soient légèrement plus grands que le précédent.

Pour notre exemple, vous pouvez utiliser la courbe EleComp nouvellement créée pour remplacer la courbe EleComp à l'étape 7 « Ajouter la courbe de compensation et le mélange de profondeur » de la section 6 dans « Comment faire » ci-dessus « Comment configurer un mixage Butterfly (alias Crocodile) » ci-dessus.