# Résumé du TP DevOps avec Terraform

Ce README résume les étapes que nous avons suivies pour accomplir le TP DevOps en utilisant Terraform pour créer une machine virtuelle Azure avec une adresse IP publique dans un réseau existant, ainsi que d'autres tâches liées au DevOps.

## Étapes du TP

1. **Création d'une machine virtuelle Azure (VM) :**
   - Utilisation de Terraform pour provisionner une machine virtuelle Azure.
   - Configuration de la machine virtuelle avec les paramètres requis, tels que la taille, le système d'exploitation, etc.
   - Attribution d'une adresse IP publique à la machine virtuelle.

2. **Connexion à la VM avec SSH :**
   - Utilisation de la commande `ssh devops@<adresse_ip_publique_vm>` pour se connecter à la machine virtuelle via SSH.
   - Authentification réussie en utilisant une clé privée SSH correspondante à la clé publique ajoutée à la machine virtuelle.

3. **Compréhension des services Azure (ACI vs. AVM) :**
   - Présentation et comparaison des services Azure Container Instances (ACI) et Azure Virtual Machines (AVM).
   - Discussion sur les cas d'utilisation, les avantages et les différences entre les deux services.

4. **Mise à disposition du code dans un référentiel GitHub :**
   - Création d'un référentiel GitHub pour stocker le code Terraform utilisé dans le TP.
   - Poussée du code Terraform dans le référentiel GitHub pour le rendre accessible et partageable.
