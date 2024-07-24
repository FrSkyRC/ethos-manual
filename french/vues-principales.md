# Vues principales

Ethos permet à l'utilisateur une grande flexibilité dans l'affichage de différentes vues. Dans un premier temps, seules les informations de base présentées ci-dessous sont affichées, jusqu'à ce que l'utilisateur personnalise ou ajoute des vues et des widgets à afficher. Notez qu'il est possible de définir jusqu'à 12 vues principales.

Les vues principales partagent normalement les barres supérieure et inférieure, mais d'autres options sont possibles, voire même configurables par l'utilisateur. Reportez vous à la section Configurer les écrans pour plus de détails sur la configuration des affichages et la programmation LUA.

![Exemple de vue principale](.gitbook/assets/mainview.png)

## La barre supérieure

La barre supérieure affiche le nom du modèle sur la gauche, ainsi que la phase de vol active si les phases de vol sont utilisées.

![Barre supérieure](.gitbook/assets/topbar.png)

Sur la droite se trouvent des icônes pour :

* l'avertissement d'erreur (triangle rouge)
* le verrouillage de l'écran (cadenas)
* la connection USB
* l'enregistrement des données
* l'écolage (maître ou élève, filaire, bluetooth ou RF)
* RSSI 2.4G
* RSSI 900M
* le volume sonore
* l'état de la batterie radio

Un appui sur les icônes du haut-parleur ou de la batterie permet d'accéder aux options de configuration correspondantes.

L'avertissement d'erreur (triangle rouge) s'affiche lorsque ETHOS détecte une des erreurs suivantes:

* erreurs de script Lua
* erreur de sauvegarde de la RAM (nécessaire pour le mode "Emergency")
* exécution d'une version de test du firmware non utilisable pour le vol.

Les détails relatifs à l'avertissement sont affichés dans la page Système / Infos. Veuillez vous référer à la section Erreurs.

## La barre inférieure

![Barre inférieure](.gitbook/assets/bottombar.png)

La barre inférieure comporte quatre icones pour accéder aux fonctions suivantes, de gauche à droite :&#x20;

* vue principale
* configuration du modèle
* configuration des écrans de la vue principale
* configuration de la radio

L'heure système s'affiche à droite. Un appui sur l'heure permet d'accéder aux options de date et d'heure de la radio.
