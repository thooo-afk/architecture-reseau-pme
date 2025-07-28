# Architecture réseau sécurisée pour PME – Analyse et conception avec analyse de risque EBIOS RM

## Contexte
Ce projet représente la conception d’une architecture réseau sécurisée pour une PME fictive de 50 employés répartis sur 3 sites géographiques. L’objectif est de proposer un réseau moderne, résilient, et adapté au télétravail, intégrant des solutions de sécurité essentielles comme VPN, pare-feu, segmentation des flux et supervision centralisée.

#L’architecture prend en compte les besoins métiers et techniques de la PME, notamment :

Sécurisation des accès distants via VPN SSL.

Protection du réseau avec un proxy et un pare-feu couplés.

Hiérarchisation des services (financier, RH, accueil, technique, commercial).

Redondance et haute disponibilité des liens critiques.

Supervision centralisée pour le suivi des performances et des incidents.

#Structure et contenu du projet

-Schéma et description de l’architecture réseau (topologie, types de matériel, segmentation).

-Configuration des équipements (routeurs, points d’accès Wi-Fi, pare-feu).

-Gestion des accès distants pour le télétravail.

-Politique de sécurité réseau : filtrage, VPN, segmentation.

-Supervision et gestion des logs.

#Analyse de risque EBIOS RM adaptée au projet

L’analyse de risque EBIOS RM (Expression des Besoins et Identification des Objectifs de Sécurité – Risk Manager) permet d’identifier, de qualifier et de réduire les risques liés à l’architecture réseau mise en place.

1. Contexte et périmètre
Description de la PME, ses activités, utilisateurs, sites.

Environnement technique : nombre d’utilisateurs, types de flux, équipements.

Actifs à protéger : données sensibles (RH, financiers), équipements, serveurs, accès VPN.

2. Évènements redoutés (scénarios de risque)
Exemples adaptés au réseau PME :

Intrusion non autorisée via accès distant mal sécurisé.

Vol ou compromission de données clients ou financières.

Interruption de service causée par attaque DoS (Déni de Service).

Propagation de malware via poste utilisateur mal protégé.

Exploitation d’une vulnérabilité dans les équipements réseau.

3. Situation dangereuse
Mauvaise configuration du VPN ou des pare-feu.

Utilisation de mots de passe faibles ou partagés.

Absence ou défaut de segmentation réseau.

Absence de supervision ou auditing insuffisant.

Défaillance des systèmes de redondance.

4. Mesures de sécurité existantes
Authentification forte sur VPN.

Filtrage et proxy pour contrôler les flux Internet.

Ségrégation des VLANs pour les différents services.

Surveillance active avec alertes et journaux.

Sauvegarde régulière des configurations et données.

5. Évaluation des risques résiduels
Après mesures appliquées, identifier les niveaux de risque (faible, moyen, élevé) et planifier le suivi et l’amélioration continue.

## Objectifs
- Sécurité des accès
- Haute disponibilité
- Accès distant (VPN)
- Supervision centralisée

## Technologies utilisées
- VLAN, VPN IPSec & SSL, pfSense, VMware, Nagios, OSPF, Active Directory
![image alt](https://github.com/thooo-afk/architecture-reseau-pme/blob/main/schema.png?raw=true)

## Analyse de risque EBIOS RM

L’approche EBIOS RM a été utilisée pour évaluer les risques liés à l’architecture réseau de cette PME fictive.

### Contexte et périmètre

- PME de 50 employés sur 3 sites.
- Services critiques : financiers, RH, accueil, commercial.
- Accès réseau sécurisé par VPN et pare-feu.

### Évènements redoutés

- Intrusion non autorisée sur réseau interne.
- Fuite ou modification frauduleuse de données sensibles.
- Interruption du service réseau impactant l’activité.

### Situation dangereuse

- Configuration incomplète des équipements de sécurité.
- Faiblesse dans la gestion des accès distants.
- Absence de redondance sur certains liens critiques.

### Mesures de sécurité mises en place

- VPN SSL avec authentification forte.
- Pare-feu et proxy couplés pour filtrage des flux.
- Segmentation du réseau en VLAN.
- Supervision centralisée avec alertes en temps réel.

### Évaluation des risques résiduels

- Risque persistant d’erreur humaine dans la configuration.
- Risque moyen d’attaque ciblée sur les accès VPN.
- Continuité de service assurée par redondance et plan de secours.

Cette analyse permet de prioriser les améliorations à apporter et d’assurer une démarche proactive de cybersécurité pour la PME.
