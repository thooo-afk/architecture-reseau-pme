# Architecture réseau sécurisée pour PME – Analyse et conception avec analyse de risque EBIOS RM

## Contexte

Ce projet présente la conception d’une **architecture réseau sécurisée** pour une PME fictive de 50 employés répartis sur 3 sites géographiques.

L’objectif est de bâtir un réseau moderne, résilient et adapté au télétravail, intégrant des solutions de sécurité essentielles telles que :

- Sécurisation des accès distants via VPN SSL.
- Protection du réseau par un proxy et un pare-feu couplés.
- Hiérarchisation des services (financier, RH, accueil, technique, commercial).
- Redondance et haute disponibilité des liens critiques.
- Supervision centralisée pour le suivi des performances et incidents.

## Structure et contenu du projet

- **Schéma et description de l’architecture réseau** : topologie, types de matériel, segmentation.
- **Configuration des équipements** : routeurs, points d’accès Wi-Fi, pare-feu.
- **Gestion des accès distants** pour le télétravail.
- **Politique de sécurité réseau** : filtrage, VPN, segmentation.
- **Supervision et gestion des logs**.

## Objectifs principaux

- Sécurité des accès au réseau.
- Haute disponibilité des services.
- Accès distant sécurisé (VPN).
- Supervision centralisée des infrastructures.

## Technologies utilisées

- VLAN, VPN IPsec & SSL  
- pfSense (pare-feu open source)  
- VMware (virtualisation)  
- Nagios (supervision)  
- OSPF (protocole de routage)  
- Active Directory (gestion des identités)  

![Schéma de l'architecture réseau](https://github.com/thooo-afk/architecture-reseau-pme/blob/main/schema.png?raw=true)

---

## Analyse de risque EBIOS RM

Cette analyse permet d’identifier, qualifier et réduire les risques liés à l’architecture réseau mise en place.

### 1. Contexte et périmètre

- PME de 50 employés répartis sur 3 sites.
- Services critiques : financiers, RH, accueil, commercial.
- Accès réseau sécurisé via VPN et pare-feu.

### 2. Évènements redoutés

- Intrusion non autorisée sur le réseau interne.
- Fuite ou modification frauduleuse de données sensibles.
- Interruption du service réseau impactant l’activité.
- Propagation de malware par poste utilisateur compromis.
- Exploitation de vulnérabilités dans les équipements réseau.

### 3. Situations dangereuses

- Configuration incomplète ou erronée des VPN et pare-feu.
- Utilisation de mots de passe faibles ou partagés.
- Absence ou insuffisance de segmentation réseau (VLAN).
- Supervision et audit limités ou inexistants.
- Défaillance des systèmes de redondance et de reprise.

### 4. Mesures de sécurité existantes

- Authentification forte et VPN SSL pour les accès distants.
- Filtrage via proxy et pare-feu pour contrôler les flux entrants et sortants.
- Segmentation du réseau par VLAN selon les services.
- Supervision centralisée avec alertes en temps réel.
- Sauvegarde régulière des configurations et données critiques.

### 5. Évaluation des risques résiduels

- Risques persistants d’erreurs humaines dans la configuration.
- Risque moyen d’attaques ciblées via accès VPN.
- Continuité de service assurée via redondance et plan de secours.

Cette analyse aide à prioriser les actions d’amélioration, garantissant ainsi une démarche proactive en cybersécurité adaptée à la PME.
