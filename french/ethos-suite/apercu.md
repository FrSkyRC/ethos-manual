## Aperçu
L'application PC Ethos Suite fonctionne sur un PC Windows ou Mac et se connecte aux radios FrSky qui exécutent le système d'exploitation ETHOS. Ethos Suite se connecte à la radio via un câble USB. Une fois connectée à la radio, la version actuelle d'ETHOS SUITE peut faire les choses suivantes :
1. Déterminez le type de radio, l'ID, les versions du firmware, du bootloader, du module RF interne, des fichiers de la mémoire Flash et de la carte SD ou des fichiers eMMC.

2. Changez le mode de la radio de l'exécution en mode chargeur d'amorçage au démarrage et à l'exécution d'Ethos sur la radio, avec la possibilité de revenir en arrière.

3. Avec les informations d'état radio actuelles affichées, Ethos Suite fournit à l'utilisateur des sélections pour la mise à jour vers le micrologiciel et les fichiers les plus récents et corrects. Il les télécharge et les installe automatiquement. L'utilisateur peut choisir de mettre à jour les composants obsolètes, de mettre à jour tous les composants ou de les mettre à jour individuellement.

4. À l'aide du Gestionnaire de modèles, une sauvegarde des modèles sur la radio peut être enregistrée sur le disque, ou une sauvegarde précédemment enregistrée peut être restaurée sur la radio. Les modèles ne sont pas rétrocompatibles, de sorte que les anciens fichiers de modèles doivent être restaurés à partir du PC lors de la rétrogradation vers un micrologiciel plus ancien.

5. L’outil de mise à jour de fichier FRSK peut flasher directement le module interne ou utiliser la radio comme proxy pour flasher n'importe quel capteur, servo ou récepteur.

6. Convertissez des images au format ETHOS.

7. Convertissez des fichiers audio au format ETHOS.

8. Outils de développement LUA vous permettent de consulter la documentation Ethos Lua, d'accéder aux scripts de démonstration Lua, ainsi que de fournir un terminal pour le débogage.

9. Flashez le chargeur d'amorçage radio en mode DFU (connexion hors tension).

10. Il existe un outil de réparation pour les radios X18/S, TW Lite, XE, X20 Pro/R/RS. Si votre radio ne peut pas lire à partir de la NAND ou si les paramètres ne peuvent pas être enregistrés, cet outil peut être utilisé pour reformater le stockage interne.

11. Éjectez les connexions USB.

12. Au démarrage, il y aura une notification si une mise à jour d'ETHOS SUITE est disponible. L'installation a lieu lorsque vous quittez Suite.

Notez qu'en plus des outils, SUITE propose 3 modes de fonctionnement avec la radio.

**a) Radio en Bootloader mode**

◦ L'onglet Radio est disponible pour vérifier et mettre à jour le micrologiciel de la radio et les fichiers Flash et carte SD ou eMMC vers les dernières versions.
◦ L'onglet Gestionnaire de modèles permet d'effectuer une sauvegarde de la radio ou de restaurer une sauvegarde enregistrée sur la radio.

**b) Radio en mode Ethos**

◦ Dans ce mode, Ethos Suite peut utiliser la radio comme proxy pour flasher directement le module interne ou n'importe quel capteur, servo ou récepteur. L'onglet FRSK Flasher gère ces opérations.

**c) Radio en mode DFU**

◦ La radio est connectée en mode de mise hors tension et l'onglet DFU Flasher est utilisé pour flasher le chargeur de démarrage. Cela est nécessaire si, par exemple, le micrologiciel de la radio a été corrompu et que la radio ne s'allume plus.