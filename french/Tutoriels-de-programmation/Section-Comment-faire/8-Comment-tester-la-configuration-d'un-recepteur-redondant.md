### 8. Comment tester la configuration d'un récepteur redondant

Il est important de tester minutieusement votre modèle avant de voler, y compris la redondance.
Ce test suppose que vous avez configuré un récepteur redondant. Veuillez également consulter Ajout d'un récepteur redondant dans la section Système RF.

#### A. Test en situation réelle
En supposant que vous avez votre récepteur principal sur 2.4G et le récepteur redondant sur 900M, vous pouvez activer le test de portée et simplement sortir jusqu'à ce que le 2.4G cesse de fonctionner (c'est-à-dire après l'alerte RSSI Critical). Le récepteur redondant aurait dû prendre le relais à ce stade.

#### B. Test au banc

##### Étape 1 : Confirmer la configuration normale

En supposant que votre récepteur principal soit en 2,4G et que le récepteur redondant soit en 900M, vérifiez que les deux récepteurs sont liés et que les voyants verts sont allumés. Vérifiez que vos commandes fonctionnent.

##### Étape 2 : Lier le récepteur principal à un autre ID de modèle
Créez un modèle de test simple (par exemple, TestRx) avec un ID de modèle différent.

Associez votre récepteur principal à ce modèle de test.

Revenez à votre modèle testé. La LED du récepteur principal devrait maintenant être rouge, car elle est liée au modèle TestRx. Le voyant du récepteur redondant doit être vert. Vos commandes doivent être fonctionnelles, prouvant que le récepteur redondant fonctionne.

##### Étape 3 : Reconnectez le récepteur principal à son ID de modèle normal.

Une fois les tests de redondance terminés, reliez le récepteur principal à son ID de modèle normal. Vérifiez que les voyants verts des deux récepteurs sont à nouveau allumés et vérifiez que vos commandes fonctionnent.
img



img



img



img



img



img



img



img



img



img



img



img



img



img



img



img



img
