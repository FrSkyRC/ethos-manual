### 6. Comment configurer un mixage Butterfly (alias Crocodile)
Le freinage papillon ou crocodile est utilisé pour contrôler le taux de descente d'un avion, le plus souvent utilisé sur les planeurs. Les ailerons devraient augmenter modestement, disons 20 %, tandis que les volets s'abaissent beaucoup. Cette combinaison crée beaucoup de traînée, et est très efficace pour le freinage et donc idéale pour contrôler l'approche à l'atterrissage.

Pour cet exemple, on supposera qu'un mixage Butterfly doit être ajouté à un planeur qui a déjà des voies Flap créés par l'assistant de création de modèle. Les planeurs utilisent généralement le manche des gaz pour freiner. Nous allons configurer le mixage de manière à ce qu'aucun papillon ne soit ajouté avec le manche des gaz vers le haut, et que le papillon augmente progressivement au fur et à mesure que le manche est abaissé.

Une compensation est également nécessaire sur la gouverne de profondeur pour éviter que le planeur ne gonfle lorsque le crocodile est appliqué. Nous utiliserons une courbe car la réponse n'est pas linéaire.

#### Étape 1. Désactiver le mixage des volets par défaut
img

Nous n'utiliserons pas le mixage Flaps par défaut, donc s'il n'est pas déjà désactivé, nous le désactiverons en définissant la condition active dans le mixage Flaps sur '---'.

#### Étape 2. Créez le mixage Butterfly.
Appuyez sur n'importe quelle ligne de mixage et sélectionnez « Ajouter un mix » dans la boîte de dialogue. Sélectionnez Butterfly dans la bibliothèque Mixer, puis ajoutez-le à l'endroit souhaité dans la liste des mixeurs, normalement après le mixage Flaps.

img

#### Étape 3. Configurer l'entrée du mixage Butterfly

img

Nous utiliserons le manche d'accélérateur comme contrôle d'entrée, afin que nous puissions régler l'entrée sur 'Gaz'.

img

Par défaut, l'entrée de l'accélérateur est au maximum lorsque le manche est complètement levé. Pour le mixage Butterfly, nous voulons qu'il soit à 0 lorsque le manche est complètement levé, nous allons donc inverser l'entrée. Appuyez longuement sur 'Gaz' pour la boîte de dialogue Invertir.

img

Avec le manche d'accélérateur complètement relevé, l'entrée est maintenant à 0 (voir ci-dessus). Le paramètre Input indique maintenant '-Gaz' pour indiquer qu'il a été inversé.
Si vous ne souhaitez pas que le mixage Butterfly soit actif tout le temps, la « condition active » peut être réglée sur un mode de vol tel qu'un mode d'atterrissage ou sur une autre commande si vous le souhaitez.

#### Étape 4. Ajout d'une courbe de zone morte
En général, c'est une bonne idée d'avoir une petite bande morte de manche à rabat à l'extrémité zéro pour éviter un déploiement accidentel si le manche bouge un peu de la butée.

img

Appuyez sur « Ajouter une nouvelle courbe ».

img

Nommez la courbe quelque chose comme 'Crowdb', faites-en une courbe personnalisée avec 3 points, et désactivez le 'Mode facile' afin que nous puissions décaler le point X.

img

Dès que vous ajoutez votre propre courbe au mixage Butterfly, le décalage interne qui fait fonctionner le contrôle de code source de 0 à 100 est supprimé. Cela signifie que notre courbe doit également transformer le contrôle de code source pour passer de 0 à 100.

Vous pouvez voir ci-dessus que la courbe produira 0% jusqu'à ce que le manche des gaz atteigne -90%, puis augmentera linéairement jusqu'à 100%.

img

Une bande morte est maintenant appliquée à l'entrée de l'accélérateur.

#### Étape 5. Configurer les ailerons et les volets

img

Normalement, pour le freinage papillon ou crocodile, les ailerons sont réglés pour augmenter modestement, disons 20%, tandis que les volets s'abaissent beaucoup. Cette combinaison crée beaucoup de traînée et est très efficace pour le freinage. (Dans l'exemple ci-dessus, la ligne du graphique du haut est à 20 % pour les ailerons, les autres voies sont toujours à 10 %). La ligne jaune verticale indique que le manche des gaz est complètement abaissé, c'est-à-dire à la position papillon à fond, de sorte que les sorties des ailerons sont à 20 %.

img

Les volets sont inhabituels en ce sens qu'une très grande déviation vers le bas est nécessaire, avec très peu ou pas de mouvement vers le haut. Cela peut être réalisé en sacrifiant une partie de la course vers le haut au profit de la descente. Dans la pratique, les klaxons des servos des volets peuvent être décalés par rapport au point mort, par exemple de 20 ou 30 degrés.
Dans cette situation, les volets seront à moitié sortis au point mort, ce qui signifie qu'un mixage décalé sera nécessaire pour amener les volets à leur position neutre pour un vol normal (voir l'étape 4 ci-dessous).

img

Nous avons réglé le Débattement des volets à -180 % pour un débattement maximal. La course réelle peut être configurée dans les sorties. (Pour éviter de surcharger les servos, les limites min/max initiales doivent être réglées à quelque chose comme +/- 30% dans les sorties, puis augmentées lors de la configuration finale tout en faisant attention à ne pas surcharger les servos. Veuillez noter que par souci de clarté, cela n'a pas été fait pour cet exemple, ils sont réglés sur -180%.). L'exemple ci-dessus montre les volets en position complètement abaissée.

#### Étape 6. Ajout d'un mixage décalé « Flaps Neutral »
Si vous avez décalé les guignols de vos servos pour obtenir une course vers le bas suffisante, les volets seront probablement déviés vers le bas d'environ 20 à 30 % au point mort du servo. Nous avons besoin d'ajouter un décalage à l'aide d'un mixage de décalage pour amener les volets à la position neutre de l'aile pour un vol normal.

img

Ajoutez un mixage décalé. Nous commencerons avec un décalage de 80 %, qui devra être ajusté pour obtenir une situation de « flaps neutre ».

img

Déplacez le manche des gaz à fond vers le haut pour vous assurer que le mixage papillon est désactivé et ne contribue pas aux voies des volets.

Réglez le nombre de voies sur 2 et les sorties sur vos voies de volets. Dans cet exemple, les volets sont sur les voies 6 et 7, et les valeurs de la table de mixage sont à 80% selon notre décalage que nous venons de définir. (Notez que les barres orange indiquant les sorties sont plus élevées que les valeurs de la table de mixage, car les limites min/max des volets ont été définies sur +/- 150 % dans les sorties.)

img

Déplacez le manche à rabat en position complètement déployée. L'écran ci-dessus montre que les sorties de la table de mixage ont été déplacées de 180 % (c'est-à-dire le réglage du Débattement) de +80 % à -100 %.
Les limites réelles de course du servo des volets doivent être configurées dans les sorties, à l'aide des paramètres Min et Max, ou à l'aide d'une courbe.

#### Étape 7. Ajout de la courbe de compensation de profondeur et mixage
Une compensation est nécessaire sur la gouverne de profondeur pour éviter que le planeur ne gonfle lorsque le crocodile est appliqué. Nous utiliserons une courbe car la réponse n'est pas linéaire.

Permet d'ajouter une compensation de profondeur non linéaire au mixage papillon. le paramètre Débattement de l'ascenseur doit être remplacé par un mixage qui, à son tour, appelle une courbe de compensation.

img

Définissez une courbe EleComp comme une courbe personnalisée à 5 points.

img

Dans cet exemple, EleComp a des valeurs initiales de -12 %, -10 %, -8 %, -5 % et 0 %. Si votre aéronef n'a pas de courbe de compensation de profondeur spécifiée, ces points devront être déterminés empiriquement.

img

Ensuite, nous définissons un mixage élevé qui convertira notre courbe de compensation en une valeur variable appropriée comme Débattement dans le mixage Butterfly. Utilisez un Mixage Libre, avec l'accélérateur comme source et fixez la courbe EleComp. Appelons-le EleCompx.

img

Enfin, assignez la sortie de mixage EleCompx à un canal aigu tel que CH30.

img

Revenez maintenant au mixage Butterfly, faites défiler vers le bas et appuyez longuement sur [ENT] sur le Débattement de la sortie de l'ascenseur, puis sélectionnez « Utiliser une source ».

img

Appuyez à nouveau dessus, puis choisissez la catégorie Voies et accédez à CH30 (EleCompx) et sélectionnez-le.

img

Le mixage Butterfly est maintenant configuré.

img

Le passage à la vue « Affichage par canal » vous permet de voir l'effet du déplacement du manche des gaz sur tous les autres voies ensemble, ce qui est beaucoup plus facile pour le débogage, etc.