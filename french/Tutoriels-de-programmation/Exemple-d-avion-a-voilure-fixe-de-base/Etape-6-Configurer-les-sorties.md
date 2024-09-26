### Étape 6. Configurer les sorties

La section Sorties est l'interface entre la « logique » de configuration et le monde réel avec les servos, les tringleries, les surfaces de contrôle et les moteurs. Jusqu'à présent, nous avons mis en place la logique de ce que nous voulons que chaque contrôle fasse. Maintenant, nous pouvons adapter cela aux caractéristiques mécaniques du modèle. Les différentes voies sont des sorties, par exemple CH1 correspond à la prise servo #1 sur votre récepteur.

img

Appuyez sur l'icône Sorties pour configurer les sorties.

img

Appuyez sur un canal de sortie pour le configurer.

#### Exemple 1 : Aileron1

img

Commencez par ajuster les neutres des servos à l'aide du réglage du subtrim, après avoir optimisé les liaisons mécaniques.

Les limites d'un servo ou d'un canal peuvent être configurées avec les paramètres Min et Max, mais un moyen simple est d'utiliser une courbe. Dans cet exemple, nous avons défini une courbe 'Ail1Lim' et l'avons affectée au canal Aileron1 (aileron gauche).

img

C'est une bonne idée d'utiliser +/- 30% au départ, puis d'ajuster la courbe en fonction du servo et des tringlerie, le modèle étant sous tension. Cela devrait garantir que le servo ne sera pas poussé au-delà de ses limites mécaniques, ce qui surchargerait le servo et entraînerait une défaillance. Le milieu de la courbe est modifié pour atteindre la position neutre de la surface.

#### Exemple 2 : Flap1

img

De la même manière, le canal Flap1 peut être affecté à une courbe 'Flap1Lim'. De plus, les modes Ralentir et Ralentir peuvent être réglés sur 1 seconde, de sorte que les volets se déplacent lentement vers la nouvelle position.

Notez que les volets nécessitent normalement une grande déflexion vers le bas pour un freinage efficace. Pour obtenir cette grande déflexion vers le bas, vous pouvez sacrifier une partie de la déviation vers le haut lors de la réalisation des liaisons. Cela signifie que les volets seront en position semi-abaissée au centre du servo. Les trois points de la courbe sont ajustés pour obtenir les positions souhaitées de sortie des volets, de demi-volets et de volets complets.

Les courbes peuvent également servir à corriger les problèmes de réponse réels, par exemple pour s'assurer que les ailerons et les volets se suivent correctement. Une courbe à 5 points est couramment utilisée d'un côté afin que la course des surfaces puisse être appariée en 5 points.