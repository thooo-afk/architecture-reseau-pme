flowchart TD
    subgraph Site1["Site 1"]
        PC1[PC Utilisateur]
        PC2[PC Utilisateur]
        ADM1[Admin]
        FW1[Firewall pfSense]
        S1FS[Serveur Fichiers (VMware)]
        S1DMZ[Serveur DMZ]
        INV1[WiFi Invités]
    end

    subgraph Site2["Site 2"]
        PC3[PC Utilisateur]
        FW2[Firewall pfSense]
        S2FS[Serveur Fichiers (VMware)]
        S2DMZ[Serveur DMZ]
        INV2[WiFi Invités]
    end

    subgraph Site3["Site 3"]
        PC4[PC Utilisateur]
        FW3[Firewall pfSense]
        S3FS[Serveur Fichiers (VMware)]
        S3DMZ[Serveur DMZ]
        INV3[WiFi Invités]
    end

    subgraph Internet
        EXT[Utilisateurs nomades]
        VPNGW[VPN SSL]
        MON[Supervision Nagios]
    end

    %% Connexions internes
    PC1 -- VLAN Production --> FW1
    PC2 -- VLAN Production --> FW1
    ADM1 -- VLAN Admin --> FW1
    INV1 -- VLAN Invités --> FW1
    S1FS -- VLAN Prod --> FW1
    S1DMZ -- VLAN DMZ --> FW1

    PC3 -- VLAN Production --> FW2
    S2FS -- VLAN Prod --> FW2
    S2DMZ -- VLAN DMZ --> FW2
    INV2 -- VLAN Invités --> FW2

    PC4 -- VLAN Production --> FW3
    S3FS -- VLAN Prod --> FW3
    S3DMZ -- VLAN DMZ --> FW3
    INV3 -- VLAN Invités --> FW3

    %% Interconnexion VPN site-to-site
    FW1 <--> FW2
    FW2 <--> FW3
    FW3 <--> FW1

    %% Accès distant et supervision
    EXT -- VPN SSL --> VPNGW
    VPNGW -- Accès sécurisé --> FW1
    VPNGW -- Accès sécurisé --> FW2
    VPNGW -- Accès sécurisé --> FW3

    MON -- Supervision --> FW1
    MON -- Supervision --> FW2
    MON -- Supervision --> FW3
    MON -- Supervision --> S1FS
    MON -- Supervision --> S2FS
    MON -- Supervision --> S3FS

    %% Internet
    FW1 -- Internet --> Internet
    FW2 -- Internet --> Internet
    FW3 -- Internet --> Internet

