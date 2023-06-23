Résumé du TP DevOps avec Terraform
Ce document résume les étapes que nous avons suivies pour accomplir le TP DevOps en utilisant Terraform pour créer une machine virtuelle Azure avec une adresse IP publique dans un réseau existant, ainsi que d'autres tâches liées au DevOps.

Étapes du TP
Création d'une machine virtuelle Azure (VM) :

Utilisation de Terraform pour provisionner une machine virtuelle Azure.
Configuration de la machine virtuelle avec les paramètres requis, tels que la taille, le système d'exploitation, etc.
Attribution d'une adresse IP publique à la machine virtuelle.
Connexion à la VM avec SSH :

Utilisation de la commande ssh devops@<adresse_ip_publique_vm> pour se connecter à la machine virtuelle via SSH.
Authentification réussie en utilisant une clé privée SSH correspondante à la clé publique ajoutée à la machine virtuelle.
Compréhension des services Azure (ACI vs. AVM) :

Présentation et comparaison des services Azure Container Instances (ACI) et Azure Virtual Machines (AVM).
Discussion sur les cas d'utilisation, les avantages et les différences entre les deux services.
Mise à disposition du code dans un référentiel GitHub :

Création d'un référentiel GitHub pour stocker le code Terraform utilisé dans le TP.
Poussée du code Terraform dans le référentiel GitHub pour le rendre accessible et partageable.
Livrables
Les livrables attendus pour le TP DevOps sont les suivants :

URL du référentiel GitHub : Fournir l'URL du référentiel GitHub contenant le code Terraform utilisé dans le TP.
Rapport détaillé : Présenter les choix techniques effectués à chaque étape du TP, ainsi que les difficultés rencontrées le cas échéant. Commenter également l'intérêt de l'utilisation de Terraform pour déployer des ressources sur le cloud plutôt que la CLI ou l'interface utilisateur.
Envoyer les livrables par e-mail à vincent.domingues@intervenants.efrei.net avec comme objet : [TP4-DEVOPS] NOM PRENOM. Les livrables doivent être envoyés au plus tard 24 heures après la réalisation du TP.
