# Résumé du TP DevOps avec Terraform

Ce README résume les étapes pour accomplir le TP DevOps en utilisant Terraform pour créer une machine virtuelle Azure avec une adresse IP publique dans un réseau existant.

## Étapes du TP

1. **Création d'une machine virtuelle Azure (VM) :**
   - Utilisation de Terraform pour provisionner une machine virtuelle Azure.
   - Configuration de la machine virtuelle avec les paramètres requis, tels que la taille, le système d'exploitation, etc.
   - Attribution d'une adresse IP publique à la machine virtuelle.

2. **Connexion à la VM avec SSH :**
   - Pour connaître l'addresse IP de la vm sur azure : utilisez cette commande :
     ```az vm show -d -g ADDA84-CTP -n devops-20190389 --query "publicIps" -o tsv```
     
   - Utilisation de la commande `ssh devops@<adresse_ip_publique_vm>` pour se connecter à la machine virtuelle via SSH.
     
   - Authentification réussie en utilisant une clé privée SSH correspondante à la clé publique ajoutée à la machine virtuelle qui s'appelle id_rsa. La commande à exécuter est donc : ssh -i id_rsa devops@<adresse_ip_publique_vm>

4. ## Compréhension des services Azure (ACI vs. AVM) :

Dans cette partie du TP, nous avons examiné et comparé deux services Azure : Azure Container Instances (ACI) et Azure Virtual Machines (AVM).

### Azure Container Instances (ACI) :

Azure Container Instances (ACI) est un service Azure qui permet d'exécuter des conteneurs sans avoir à gérer des machines virtuelles ou des clusters. Il offre une expérience de déploiement rapide et facile pour les applications conteneurisées. Les principales caractéristiques d'ACI sont :

- Déploiement rapide : ACI permet de déployer rapidement des conteneurs sans avoir à configurer une infrastructure sous-jacente.
- Facturation granulaire : ACI offre une tarification à la seconde et une facturation granulaire basée sur les ressources utilisées.
- Évolutivité automatique : ACI permet de définir des règles d'évolutivité automatique pour augmenter ou réduire le nombre d'instances de conteneurs en fonction de la demande.
- Facilité d'utilisation : ACI est simple à utiliser et ne nécessite pas de connaissances approfondies en gestion de l'infrastructure.

### Azure Virtual Machines (AVM) :

Azure Virtual Machines (AVM) est un service Azure qui fournit des machines virtuelles hautement configurables et personnalisables. Il offre une grande flexibilité pour exécuter différentes charges de travail et systèmes d'exploitation. Les principales caractéristiques d'AVM sont :

- Flexibilité des configurations : AVM permet de choisir la taille de la machine virtuelle, le système d'exploitation, la capacité de stockage, etc.
- Contrôle total : AVM offre un contrôle complet sur la configuration et la gestion de la machine virtuelle.
- Prise en charge des charges de travail diverses : AVM permet d'exécuter une variété de charges de travail, des applications web aux bases de données en passant par les applications d'entreprise.
- Évolutivité flexible : AVM permet de dimensionner verticalement et horizontalement les machines virtuelles en fonction des besoins.

4. **Comparaison et cas d'utilisation :**

ACI et AVM sont adaptés à différents cas d'utilisation :

- ACI convient aux déploiements rapides et agiles de conteneurs, tels que les tests, le développement, les charges de travail à court terme et les microservices.
- AVM est recommandé pour les charges de travail plus complexes et les applications qui nécessitent une personnalisation et un contrôle approfondis sur l'infrastructure sous-jacente.

Le choix entre ACI et AVM dépend des exigences spécifiques de votre application et de vos besoins en matière de déploiement, de gestion et de flexibilité.


5. **Mise à disposition du code dans un référentiel GitHub :**
   - Création d'un référentiel GitHub pour stocker le code Terraform utilisé dans le TP.
   - Poussée du code Terraform dans le référentiel GitHub pour le rendre accessible et partageable.
