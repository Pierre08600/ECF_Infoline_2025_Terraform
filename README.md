

**# Projet ECF InfoLine - Infrastructure Azure**



Auteur : Pierre Baroni

Formation : Administrateur Système DevOps Bloc de compétences "Automatiser le déploiement d'une infrastructure dans le cloud" 

Date : Octobre 2025



**## Description**



Ce projet déploie une infrastructure sur Azure pour l'application InfoLine.



C'est mon premier projet avec Terraform pour apprendre l'Infrastructure as Code.



\## Ce qui est déployé



\- Un cluster Kubernetes (AKS) avec 2 machines

\- Une Azure Function pour gérer les connexions

\- Un espace de stockage



Toutes les ressources on été déployées dans la région Azure France Central.



**## Technologies**



\- Terraform : pour créer l'infrastructure automatiquement

\- Azure : le cloud de Microsoft

\- Kubernetes : pour gérer les conteneurs

\- Git : pour sauvegarder mon code



**## Organisation des fichiers**



terraform/

&nbsp; - provider.tf : connexion à Azure

&nbsp; - variables.tf : les paramètres

&nbsp; - main.tf : les ressources principales

&nbsp; - outputs.tf : les informations de sortie

&nbsp; - modules/ : dossiers aks et functions



screenshots/ : Toutes mes captures d'écran



**## Les étapes de déploiement**



Étape 1 - Connexion à Azure

Je me connecte à mon compte Azure :

az login



Étape 2 - Initialisation de Terraform

Je prépare Terraform et télécharge les plugins nécessaires :

cd terraform

terraform init



**Étape 3 - Vérification du code**

Je vérifie que mes fichiers sont corrects :

terraform validate



**Étape 4 - Simulation du déploiement**

Je regarde ce qui va être créé avant de le faire vraiment :

terraform plan -out=tfplan



**Étape 5 - Déploiement réel**

Je lance la création de toute l'infrastructure :

terraform apply tfplan



Durée totale : environ 10-12 minutes.



**## Vérifications**



Pour voir les ressources :

az resource list --resource-group rg-infoline-dev --output table



Pour se connecter au cluster :

az aks get-credentials --resource-group rg-infoline-dev --name aks-infoline-dev

kubectl get nodes



**## Pour supprimer**



terraform destroy



\## Coût approximatif



Environ 70 euros par mois si on laisse tourner.



**## Ce que j'ai appris**



\- Utiliser Terraform pour déployer sur Azure

\- Créer un cluster Kubernetes

\- Organiser mon code en modules

\- Utiliser Git et GitHub



**## Contact**



Pierre Baroni

pierre.baroni@free.fr



Projet réalisé dans le cadre de ***l'ECF Administrateur Système DevOps***.

