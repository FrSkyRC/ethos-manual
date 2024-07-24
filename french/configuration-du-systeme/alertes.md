## Alertes

![Icône Alertes](../.gitbook/assets/system-icon-alerts.png)
![Gestionnaire des alertes](<../.gitbook/assets/system-alerts.png>)

Les alertes système sont les suivantes :

### Mode silencieux

Une alerte « Mode silencieux » sera émise au démarrage lorsque la vérification « Mode silencieux » est activée et que le « Mode audio » a été réglé sur Silencieux en mode Système / Général / Audio

### Tension principale

Une alerte vocale « La batterie de la radio est faible » est émise lorsque la vérification de la « Tension principale » est activée et que la batterie de la radio principale est inférieure au seuil défini dans le paramètre « Basse tension » dans Système / Batterie.

### Tension pile RTC

Une alerte vocale « La batterie RTC est faible » sera émise lorsque la vérification de la « tension RTC » est activée et que la pile bouton RTC est inférieure à 2,5 V, le seuil de batterie RTC par défaut. Il peut être éteint jusqu'à ce que la batterie RTC ait été remplacée, mais ne doit pas être laissé éteint indéfiniment. Le temps réel est utilisé dans l'enregistrement des données, et une heure invalide entraînera des difficultés dans la lecture des journaux, en particulier pour distinguer les sessions de vol.

### Avertissement de conflit de capteur

La détection des conflits de capteurs peut être désactivée. Cela ne devrait être nécessaire que si vous avez des capteurs qui ne répondent pas à la spécification S.Port.

### Inactivité

Une alerte vocale « Radio inactive » sera émise lorsque la radio n'a pas été utilisée pendant plus longtemps que la durée « Inactivité », ainsi qu'une vibration au cas où le volume de la radio serait complètement baissé. La valeur par défaut est de 10 minutes.
