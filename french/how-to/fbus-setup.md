---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Configurer un système FBUS

Le protocole [FBUS](../model-setup/telemetry.md#how-frsky-telemetry-works)
(anciennement F.Port2) intègre le contrôle et la télémétrie sur une seule ligne,
ce qui permet à plusieurs périphériques FBUS de partager une unique connexion en
série, avec configuration sans fil complète. Dans cet exemple, nous allons
câbler deux servos Xact sur les voies d'aileron (1 et 5) de l'[exemple d'avion à
voilure fixe de base](../tutorials/basic-fixed-wing.md).

!!! note "Captures d'écran à venir"
    Cette page ne comporte pas encore de captures d'écran du simulateur — voir
    [Chaîne de production des captures](../contributing/screenshot-pipeline.md).

## 1. Télécharger la dernière version du firmware

FBUS nécessite l'utilisation de la dernière version du firmware, tant pour le
récepteur que pour les périphériques — par exemple, les servos Xact doivent être
au moins en v2.0.1. Récupérez les mises à jour pertinentes sur la
[page de téléchargement FrSky](https://www.frsky-rc.com/download/).

## 2. Flasher le firmware

Copiez les fichiers de firmware dans le dossier `Firmware/` de la carte SD ou de
l'eMMC. Dans le [Gestionnaire de
fichiers](../system-setup/file-manager.md), branchez le câble du servo sur la
connexion S.Port de la radio (le fil blanc ou jaune du côté de l'encoche),
sélectionnez le fichier de firmware, puis choisissez **Flash Périphérique
externe**.

## 3 / 5. Configurer les ID physiques

Les deux servos utilisent par défaut l'ID physique `0C` hexadécimal et l'ID
d'application `6800` hexadécimal — ils entreront en conflit sur le bus partagé si
l'un des deux n'est pas modifié. Deux méthodes sont possibles selon le type de
récepteur :

**Via le connecteur S.Port de l'émetteur** (n'importe quel récepteur) :

1. Branchez le servo 1, accédez à **Device Config → XAct** et réglez **Module**
   sur **S.Port connector**. Laissez l'ID physique `0C`, l'ID d'application
   `6800` et la voie `CH1` à leurs valeurs par défaut, puis appuyez sur
   **Enregistrer dans le flash**.
2. Branchez le servo 2 à la place, dans le même menu. Changez l'**ID physique**
   en `0D` hex et l'**ID d'application** en `6801` hex (reportez-vous au [tableau
   des ID physiques](../model-setup/telemetry.md#how-frsky-telemetry-works) pour
   connaître les emplacements libres), réglez la **voie** sur `CH5`, puis
   **Enregistrer dans le flash**.

**Directement via le récepteur** (par exemple un TD-R18 Tandem, avec les deux
servos câblés simultanément — voir l'[étape
4](#4-configure-the-receiver-for-fbus)) :

1. Avec le servo 1 seul branché (par exemple sur la broche Pin1 du récepteur),
   accédez à **Device Config → XAct**, **Module** → **Internal module**.
   Confirmez les valeurs par défaut (`0C` / `6800` / `CH1`), puis **Enregistrer
   dans le flash**.
2. Avec le servo 2 seul branché (Pin5), même menu (Device Config ne peut se
   connecter qu'à un seul servo à la fois) — passez à `0D` / `6801` / `CH5`, puis
   **Enregistrer dans le flash**. Sélectionnez ensuite de nouveau Device Config
   pour confirmer que la modification a bien été prise en compte.

## 4. Configurer le récepteur pour FBUS {: #4-configure-the-receiver-for-fbus }

**SR10 Pro** : accédez au [Système RF](../model-setup/rf-system.md) → appuyez sur
le bouton du récepteur → **Options** → réglez le **Port de télémétrie** sur
**FBUS**. Les servos Xact peuvent alors être connectés en série à partir de ce
port ; étant donné que chaque servo n'a qu'un seul connecteur, un prolongateur
multivoies F.Port2 (FP2CH4, FP2CH6 ou FP2CH8) permet de le répartir vers
plusieurs servos.

**TD-R18 Tandem** : Système RF → le bouton du récepteur → **Options** → réglez
individuellement les broches (par exemple **Pin1**, **Pin5**) sur **FBUS** — vous
pouvez réaffecter autant de broches que nécessaire à FBUS, ce qui évite
totalement l'emploi de prolongateurs ; toutes les broches programmées en FBUS
transportent exactement le même signal FBUS.

## 5. Vérifier le contrôle FBUS des servos

Branchez le servo 1 en position Pin1 et le servo 2 en position Pin5, qui sont les
voies d'aileron de notre exemple d'avion à voilure fixe de base. Alimentez
l'ensemble et vérifiez que les voies 1 et 5 font fonctionner les bons servos.

## 6. Vérifier la télémétrie FBUS

Une fois les deux servos branchés, accédez à
[Télémétrie](../model-setup/telemetry.md), supprimez les éventuels capteurs `SRV`
existants, puis redécouvrez tous les capteurs. Chaque servo remonte 4 capteurs :
le courant, la tension, la température et l'état (`OK` en fonctionnement normal).

## 7. Modifier la configuration ultérieurement

Une fois le modèle entièrement câblé, il n'est plus pratique d'isoler un servo
pour le reconfigurer via Device Config. Procédez plutôt ainsi : accédez à
Télémétrie, repérez un capteur appartenant au servo concerné (par exemple
`SRV1 curr`) et choisissez **Configure** — cela ouvre directement la
configuration de ce servo. Appuyez sur **Enregistrer dans le flash** après chaque
modification.

!!! warning
    Ne modifiez pas par inadvertance l'ID physique ou l'ID d'application depuis
    cet écran — c'est ce qui garantit que chaque servo reste adressable sur le
    bus partagé.
