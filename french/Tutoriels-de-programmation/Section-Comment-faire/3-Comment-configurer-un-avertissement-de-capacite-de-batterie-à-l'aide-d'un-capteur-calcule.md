### 3. Comment configurer un avertissement de capacité de batterie à l'aide d'un capteur calculé
Il s'agit d'un autre exemple de surveillance de l'utilisation de la batterie en mesurant l'énergie ou les mAh consommés, afin que la capacité restante de la batterie puisse être calculée. Si votre ESC ne dispose pas de cette capacité, un capteur de courant tel que la série FrSky FASxxx peut être utilisé avec un capteur de consommation calculé.

img

Connectez le port de télémétrie du capteur de courant FASxxx à votre récepteur via un câble S.Port et activez l'option « Découvrir de nouveaux capteurs » dans Modèle / Télémétrie. Les capteurs supplémentaires incluent 'Courant' comme indiqué dans l'exemple ci-dessus.

img

Dans cet exemple, un FAS100 a été utilisé, de sorte que la plage est définie sur 0-100A.

img

Dans Télémétrie, cliquez sur « Créer un capteur calculé ».

img

Et sélectionnez « Consommation » dans la boîte de dialogue contextuelle.

img

Configurez le capteur de consommation pour utiliser des unités « mAh » et réglez la plage en fonction de votre Lipo, par exemple 2800 mAh.

img

Sélectionnez une condition de réinitialisation appropriée, telle qu'un événement système ' ! Télémétrie active'. Première sélection
'Télémétrie active', puis appuyez longuement sur Entrée pour afficher le menu des options, puis sélectionnez 'Inverser'. Le capteur sera réinitialisé lorsque la télémétrie est perdue lorsque le modèle est éteint.

Sélectionnez la source comme « Actuelle ».

img

Ajoutez un nouveau inter logique à l'aide de la fonction Delta (d>X) pour surveiller le capteur de consommation, et devenez Vrai/Actif chaque fois que la consommation atteint 200 mAh, ou une fraction pratique de la capacité de la batterie.

Veuillez noter que pour le calcul de la consommation, vous souhaitez que la fonction continue à mesurer jusqu'à ce que votre seuil soit atteint, de sorte que l'intervalle de vérification doit être réglé sur Infini (c'est-à-dire '---').

De plus, la durée minimale peut être définie sur une valeur supérieure à 0 afin que vous puissiez la voir se déclencher pendant le débogage. À 0.0, cela se produit trop vite pour le voir.

img

Ajoutez une fonction spéciale 'Play audio' appelez notre inter logique 'delta200mAh' pour énoncer la valeur de la consommation chaque fois que l’inter logique devient True.

img

Ajout d'une action audio pour jouer la valeur du capteur 'Consommation'.

img

En outre, vous pouvez configurer un autre inter logique pour déclencher un appel de sortie de la consommation toutes les 10 secondes une fois qu'un seuil tel que votre limite basse a été atteint. Dans notre exemple, un seuil de 1000mAh a été fixé pour un LiPo de 1200mAh.

img

Configurez une fonction spéciale pour jouer la valeur de la consommation toutes les 10 secondes une fois que le LSW4 se déclenche lorsque le seuil de 1000 mAh a été atteint.

img



img

Ajoutez une action audio pour jouer la valeur du capteur 'Consommation' toutes les 10 secondes une fois que votre limite basse a été atteinte.
