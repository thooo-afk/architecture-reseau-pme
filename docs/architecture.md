![image alt](https://github.com/thooo-afk/architecture-reseau-pme/blob/main/schema.png?raw=true)

## Segmentation réseau

- **VLAN Production** : 192.168.10.0/24 – Utilisateurs et serveurs métiers
- **VLAN Administration** : 192.168.20.0/24 – IT et gestion
- **VLAN DMZ** : 192.168.30.0/24 – Services exposés (web, mail, VPN)
- **VLAN Invités** : 192.168.40.0/24 – Accès Internet uniquement, isolé du reste
