#!/bin/bash

# Script pour installer et configurer Docker

# Mettre à jour les paquets existants
sudo apt-get update

# Installer les paquets nécessaires pour permettre à apt d'utiliser un repository sur HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

# Ajouter la clé GPG officielle de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Ajouter le repository Docker
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Mettre à jour les paquets
sudo apt-get update

# Installer la dernière version de Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Ajouter l'utilisateur actuel au groupe docker pour pouvoir exécuter Docker sans sudo
sudo usermod -aG docker $USER

# Afficher la version de Docker pour vérifier l'installation
docker --version
