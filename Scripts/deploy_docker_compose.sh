#!/bin/bash

# Script pour déployer des configurations Docker Compose

# Naviguer vers le répertoire contenant le fichier docker-compose.yml
cd /path/to/your/docker-compose-directory

# Déployer la configuration Docker Compose
docker-compose up -d

# Afficher les conteneurs en cours d'exécution
docker ps
