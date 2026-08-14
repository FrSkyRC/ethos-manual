---
translated_from: 827e532e2b0324591f0fdbb61a39e61180642b24
---

# Système RF

Configure le(s) module(s) RF interne et/ou externe du modèle, l'identifiant
d'enregistrement du propriétaire (Owner Registration ID), l'appairage du
récepteur et les options du récepteur. C'est également ici que se trouve le
choix entre module interne et externe pour un modèle — contrairement à
presque tout le reste de la [Configuration du système](../system-setup/index.md),
la sélection du matériel RF se fait **par modèle**, et non pour l'ensemble
de la radio.

!!! note "Captures d'écran à venir"
    Le jeu de captures d'écran de cette section n'a pas encore été réalisé
    (voir [Pipeline de captures d'écran](../contributing/screenshot-pipeline.md)) —
    le contenu ci-dessous est exact, mais uniquement textuel pour l'instant.

## Identifiant d'enregistrement du propriétaire {: #owner-registration-id }

Un code unique de 8 caractères (mélange de lettres majuscules/minuscules et
de chiffres, sans caractères spéciaux) qui devient le **Registration ID**
d'un récepteur lors de son enregistrement. Utilisez le *même* code sur
plusieurs émetteurs pour pouvoir employer le **Smart Share** entre eux —
faites-le avant de créer le modèle que vous souhaitez partager. Compatible
avec EdgeTX ; seulement partiellement compatible avec OpenTX.

## Désactivation de l'émission RF

Maintenez `PAGE` pendant la mise sous tension pour désactiver l'émission RF
interne et externe pour cette session (un avertissement confirme la
désactivation). Le réglage **State** du module reste sur ON — un redémarrage
normal rétablit l'émission normale.

## Modes du module interne

Le module interne des X18/X20/X20S/X20HD (TD-ISRM) fonctionne selon l'un de
trois modes — le module TD-ISRM Pro des X20 Pro/R/RS est similaire mais
ajoute les variantes LoRa et tandem bi-bande. Le mode sélectionné **doit
correspondre à ce que le récepteur prend en charge**, sinon l'appairage
échouera ; après un changement de mode, revérifiez soigneusement chaque voie
et tout particulièrement le comportement du failsafe.

- **ACCESS** — les chaînes 2,4 GHz et 900 MHz fonctionnent en tandem sous un
  même ensemble de commandes ACCESS. Jusqu'à trois récepteurs au total, dans
  n'importe quelle combinaison de 2,4 GHz (24 voies) et 900 MHz (16 voies) ;
  la télémétrie des deux bandes est active simultanément, étiquetée par
  bande. Une source de télémétrie **RX** indique quel récepteur est
  actuellement la source de télémétrie active.
- **ACCST D16** — une seule chaîne 2,4 GHz, pour les récepteurs de la série
  « X » plus anciens.
- **Mode TD** — tandem 2,4 GHz + 900 MHz à faible latence et longue portée
  pour les récepteurs Tandem, 24 voies sur chaque bande.

Les versions du **firmware Flex** ajoutent une seconde colonne Type
permettant de basculer entre les modulations FLEX915M (915 MHz de type FCC)
et FLEX868M (868 MHz de type LBT) sous chacun des trois modes ci-dessus —
des antennes adaptées doivent être installées selon le choix retenu. Les
utilisateurs européens peuvent employer 200/500 mW sur 868 MHz ; à 25 mW, la
télémétrie passe par le 868 MHz, à 200/500 mW elle passe en 2,4 GHz pour
rester conforme.

Chaque combinaison mode/plage de voies implique un compromis sur la cadence
de rafraîchissement — par exemple, en ACCESS, 8 voies sont rafraîchies
toutes les 7 ms, 16 toutes les 14 ms, 24 toutes les 21 ms (par rotation de
blocs de 8), et un **mode Racing** à 4 ms est disponible sur les voies 1-8
avec les récepteurs compatibles (série RS, v2.1.7+).

## Enregistrement et appairage d'un récepteur (ACCESS) {: #registering-and-binding-a-receiver-access }

L'appairage d'un récepteur ACCESS se fait en deux phases —
l'**enregistrement** n'a lieu qu'une seule fois par couple
récepteur/émetteur ; l'**appairage** peut ensuite être répété sans fil, sans
avoir besoin du bouton bind.

**Phase 1 — Enregistrement** :

1. Appuyez sur **Register** (ignorez complètement cette étape si le
   récepteur est déjà enregistré).
2. Maintenez le bouton bind du récepteur enfoncé pendant sa mise sous
   tension ; attendez que les deux LED s'allument. La boîte de dialogue passe
   de « Waiting for receiver… » à « Receiver connected » et renseigne
   automatiquement le nom du récepteur.
3. Confirmez/modifiez le **Registration ID** (par défaut, l'identifiant
   d'enregistrement du propriétaire ci-dessus — c'est la concordance des
   identifiants entre émetteurs qui permet au Smart Share de fonctionner), le
   **Rx name** et l'**UID**. L'UID distingue plusieurs récepteurs utilisés
   ensemble dans un même modèle — laissez 0 pour un récepteur unique ; pour
   plusieurs (par exemple un par bloc de 8 voies), l'usage est d'utiliser
   0/1/2. L'UID ne peut pas être relu depuis le récepteur par la suite,
   étiquetez-le donc physiquement.
4. Appuyez sur **Register**, confirmez « Registration ok », puis mettez le
   récepteur hors tension — il est enregistré mais pas encore appairé.

**Phase 2 — Appairage** :

!!! warning
    N'effectuez jamais un appairage avec un moteur électrique connecté ou un
    moteur thermique en marche.

1. Récepteur hors tension ; vérifiez que vous êtes dans le bon mode de
   module.
2. Appuyez sur **RX1** (ou 2/3) → **Bind**. Une alerte vocale « Bind »
   répétée confirme le mode d'appairage.
3. Mettez le récepteur sous tension **sans** toucher son bouton bind ;
   sélectionnez-le dans la liste « Select device » qui apparaît.
4. Confirmez « Bind successful ». Effectuez un cycle d'alimentation de la
   radio et du récepteur — LED verte du récepteur allumée, rouge éteinte,
   signifie que la liaison est établie. Il n'est pas nécessaire de refaire
   l'appairage, sauf si l'un des deux éléments est remplacé.
5. Répétez l'opération pour les récepteurs supplémentaires (RX2, RX3) le cas
   échéant.

## Options du récepteur

Avec le récepteur sous tension, appuyez sur son bouton RX pour accéder à :

- **Options** — **Telemetry** (activée/désactivée pour ce récepteur),
  **Reduced telemetry power 25mW** (au lieu des 100 mW habituels — utile si
  des servos proches captent des interférences RF), **High PWM Speed**
  (rafraîchissement des servos à 7 ms au lieu de 18 ms — vérifiez que vos
  servos peuvent suivre), **Telemetry port** (S.Port/F.Port/FBUS), **SBUS**
  (16 ou 24 voies — tous les appareils SBUS connectés doivent prendre en
  charge le SBUS-24 avant de l'activer) et **Channel Mapping** pour
  réaffecter les voies à des broches spécifiques du récepteur.
- **Share** — confie le récepteur à une autre radio ACCESS possédant un
  identifiant d'enregistrement du propriétaire *différent*. Sur la radio
  source, appuyez sur Share (sa LED verte s'éteint) ; sur la radio cible,
  effectuez un Bind normal — Share évite un nouvel enregistrement puisque
  l'identifiant est transféré automatiquement. Quittez sur la radio source
  pour mettre fin au partage ; un nouvel appairage le rend à son propriétaire.
  (Inutile si toutes les radios partagent déjà un même identifiant
  d'enregistrement du propriétaire — il suffit alors d'appairer directement
  sur la radio qui doit le piloter.)
- **Reset bind** — nettoie après un Share et rétablit votre propre appairage ;
  effectuez ensuite un cycle d'alimentation du récepteur.
- **Factory reset** — réinitialise le récepteur et effface son UID, le
  désenregistrant complètement.

Avec le récepteur **hors tension**, le même bouton RX propose **Options**
(attend la connexion du récepteur), **Bind** (par exemple pour réappairer un
récepteur précédemment appairé ailleurs) et **Clear** (équivalent à Reset
bind).

## Récepteurs redondants {: #redundant-receivers }

Un second récepteur peut être appairé à un emplacement RX libre pour assurer
une redondance — le 2,4 G et le 900 M peuvent se suppléer mutuellement. La
redondance FrSky s'évalue **trame par trame**, en utilisant toujours la
meilleure trame disponible (bascule actif/actif), de sorte que le contrôle
peut passer d'un récepteur à l'autre d'une trame à la suivante selon les
besoins.

1. Reliez la sortie SBUS Out du récepteur redondant à l'entrée SBUS In du
   récepteur principal.
2. Activez le module RF interne correspondant (par exemple 900 M) et
   définissez son antenne et sa puissance.
3. Enregistrez le nouveau récepteur (s'il ne l'est pas déjà), puis
   appairez-le à l'emplacement RX libre comme indiqué ci-dessus.
4. Vérifiez que sa LED verte est allumée — il est désormais répertorié comme
   récepteur redondant.

## Failsafe {: #failsafe }

Les données de failsafe sont renvoyées par l'émetteur environ toutes les
10 secondes ; sur les récepteurs TD/TW/AP/AP Plus, elles sont également
enregistrées côté récepteur, ce qui leur permet de survivre à un redémarrage
de celui-ci. Revérifiez soigneusement le failsafe après toute mise à jour du
firmware du récepteur ajoutant ce comportement.

- **Hold** — maintient les dernières positions de voies reçues.
- **Custom** — par voie : **Not Set**, **Hold**, **Custom** (une valeur fixe
  — appuyez sur l'icône en forme de flèche pour capturer la valeur actuelle,
  ou saisissez-en une directement) ou **No Pulses**.
- **No Pulses** — arrête purement et simplement les impulsions, pour les
  contrôleurs de vol disposant de leur propre comportement de retour au
  point de départ en cas de perte de signal.
- **Receiver** — (récepteurs série X ou plus récents) définit le failsafe
  directement sur le récepteur.

!!! warning
    Testez soigneusement le réglage de failsafe choisi avant de vous y fier.

## Test de portée {: #range-check }

Effectuez ce test sur le terrain avant chaque session de vol avec une
configuration nouvelle ou modifiée. La sélection de **Range Check** réduit
volontairement la puissance d'émission (une alerte vocale répétée confirme
le mode) et affiche en direct les valeurs VFR %/RSSI permettant d'évaluer la
qualité de la liaison. Le niveau de puissance du test de portée FrSky est
d'environ −10 dB par rapport au niveau de fonctionnement normal de +20 dB ;
avec la radio et le récepteur à 1 m de hauteur, attendez-vous à une alarme
critique aux alentours de 30 m — une distance plus courte dans des
conditions normales peut indiquer un problème.

Avec plusieurs récepteurs appairés, les données du test de portée sont
affichées pour un seul récepteur actif à la fois par bande — éteindre celui
qui est actuellement actif permet au suivant (par ordre de priorité 0/1/2,
indiqué par le capteur **RX**) de prendre le relais, afin de pouvoir
contrôler chacun à son tour.

## Modules RF externes et tiers

Les modules externes FrSky (XJT Lite, R9M Lite, R9M Lite Pro, TWIN Lite Pro)
suivent le même schéma Register/Bind que le module interne, avec des nombres
de voies, niveaux de puissance et exigences d'antenne propres à chaque
protocole — reportez-vous au manuel du module concerné pour les valeurs
exactes.

**ELRS** (ExpressLRS) est pris en charge à la fois via le mode ELRS du
module TWIN Lite Pro et via de véritables modules ELRS (qui nécessitent
l'installation du script Lua ELRS dans `scripts/elrs` avant d'apparaître
comme option de module). Douze voies ; les réglages principaux sont
**Packet Rate** (compromis latence/portée), **Telemetry Ratio** (fréquence
d'envoi de la télémétrie, de 1:1 à 1:128), **Switch Mode** (**Hybrid** — la
plupart des voies auxiliaires réduites à 2–3 positions pour une latence
moindre — ou **Wide** — résolution complète de 64–128 pas), **Model Match**
et **Tx Power** (10 mW–1000 mW, avec éventuellement **Dynamic Power** pour
s'adapter automatiquement à la qualité de la liaison — nécessite l'activation
de la télémétrie).

Les **modules tiers** (actuellement Ghost, Multi-protocol, Crossfire, en
plus d'ELRS) nécessitent chacun leur propre script Lua installé par
l'utilisateur — voir les notes sur `scripts/` dans
[Pipeline de captures d'écran](../contributing/screenshot-pipeline.md) ainsi
que le fil *Third-Party External Modules* sur rcgroups. L'entrée d'un module
n'apparaît sur l'écran RF qu'une fois son script installé. Le module
Multi-protocol (IRX4 Lite) peut en outre être flashé directement depuis le
[Gestionnaire de fichiers](../system-setup/file-manager.md) : copiez le
fichier de firmware dans `Firmware/`, puis choisissez **Flash external
multimodule**.
