# Phases de vol

![](<../.gitbook/assets/0 (5).jpeg>)

Les phases de vol apportent une flexibilité à la configuration d'un modèle, car ils permettent aux modèles d'être configurés pour des tâches spécifiques ou un comportement de vol sélectionnables par inter. Par exemple, les planeurs peuvent être configurés pour avoir des phases de vol  sélectionnables tels que le décollage, la croisière, la vitesse et le thermique. Les avions à moteur peuvent avoir des modes de vol pour le vol de précision normal, le décollage et l'atterrissage avec les demi-volets ou les volets pleins déployés. Les hélicoptères ont des phases telles que Normal pour la mise en file d'attente et le décollage/atterrissage, Idle Up 1 pour le vol acrobatique et Idle Up 2 pour peut-être 3D.
Les phases de vol éliminent une grande partie de la charge de commutation et de trim du pilote.
La grande puissance des modes de vol est qu'ils prennent en charge des trims indépendants et peuvent également être utilisés pour activer les Vars et les Mixes. Ensemble, ces caractéristiques permettent une grande flexibilité. Reportez-vous à l'Introduction aux modes de vol dans la section Didacticiels pour voir des exemples de ces fonctionnalités appliquées.

![](<../.gitbook/assets/1 (4).png>)

Aucune phase de vol par défaut n'est définie. Appuyez sur la phase de vol par défaut et sélectionnez Modifier si vous souhaitez la renommer, sinon sélectionnez Ajouter pour définir une nouvelle phase de vol. 
NB : 20 phases de vol sont possibles par modèle.

![](<../.gitbook/assets/2 (2).png>)

**Nom**

Permet de nommer la phase de vol.

**Condition**

Lors de l'ajout d'une phase de vol, la condition active par défaut est inactive, c'est-à-dire '---'. Les phases de vol peuvent être contrôlés par la position des interrupteurs ou des boutons, des inters de fonction, des inters logiques, un événement système tel que la coupure ou le maintien de l'accélérateur, ou les positions de trim.
NB : la phase de vol par défaut n'a pas de paramètre « Condition activation », car il s'agit de la phase par défaut si aucune autre phase n'est active. Si plusieures phases de vol sont activées par une même condition, la première phase rencontrée sera celle active.
NB : Une seule phase de vol peut être activée à la fois.
La phase de vol active est indiquée en gras.

**Activation progressive, désactivation progressive**

Les temps attribués pour des transitions entre les phases de vol. L'exemple montre une seconde attribuée à chacun.

![](<../.gitbook/assets/3 (9).jpeg>)

Une fois programmés, les phases de vol sont affichées dans les mixages. Jusqu'à 100 phases de vol peuvent être programmées. Comme la plupart des fonctions d'ETHOS, l'utilisateur peut programmer des noms de phase de vol décrivant la fonctionnalité de la phase telle Normal, Croisière, Thermique, vitesse, décollage, atterrissage, etc ..
NB : Lors de l'ajout d'une nouvelle phase de vol, tous les mixages utilisant les phases de vol doivent être vérifiés pour un fonctionnement correct.

**Gestion des phases de vol**

![](<../.gitbook/assets/4 (7).jpeg>)

Appuyez sur une phase de vol pour faire apparaître un menu qui vous permet d’éditer, d'ajouter une nouvelle phase de vol, de déplacer, de dupliquer ou de supprimer.
Une phase  de vol dupliquée héritera des paramètres de la phase de vol originale dans les mixages, de sorte que les mixages se comporteront de la même manière et seront également actifs (ou non) lorsque cette phase de vol est active. La phase ainsi dupliquée devra être déplacée en dernier afin de ne par interférer avec les précédentes.

![](<../.gitbook/assets/5 (3).png>)

Vous pouvez utiliser l'option « Déplacer » pour modifier l'ordre des phases de vol. La priorité des phases de vol est dans l'ordre croissant, ainsi la première qui a sa condition d'activation sera la phase active.

