## Exemple d'hélicoptère flybarless basique
Cet exemple d'hélicoptère flybarless basique couvre la configuration d'un hélicoptère de base à l'aide d'un contrôleur FBL tel que le Spirit.

Contrairement aux aéronefs à voilure fixe à dièdre, les hélicoptères sont intrinsèquement instables et dépendent d'un contrôleur de vol utilisant des gyroscopes et des accéléromètres pour produire un vol stable.

Les gyroscopes, qui mesurent la vitesse de rotation autour d'un axe, et les accéléromètres, qui détectent le mouvement et la vitesse pour suivre le mouvement et l'orientation, sont les principaux contributeurs à la détermination du lacet, du tangage et du roulis pour les calculs de vol requis pour un vol stable. La stabilité est obtenue par l'utilisation d'un algorithme logiciel appelé boucle de contrôle PID (Proportional Integral Derivative). La boucle PID nécessite un réglage pour obtenir un vol stable tout en conservant la réactivité tout en minimisant le dépassement. Les paramètres de réglage sont fonction des caractéristiques physiques et électriques de l'hélicoptère.

Dans cet exemple, nous ne couvrirons que l'aspect programmation radio de la configuration de l'hélicoptère. Reportez-vous à la documentation de votre application de configuration FBL pour le reste de la configuration. Une bonne connaissance de la technologie et de l'exploitation des hélicoptères est supposée.

**Avertissement!** Avant de commencer, pour éviter les blessures, assurez-vous que les pales du rotor ont été retirées afin de pouvoir effectuer l'installation en toute sécurité.