#!/bin/bash

# Script pour nettoyer les ressources Docker

# Arrêter tous les conteneurs en cours d'exécution
docker stop $(docker ps -q)

# Supprimer tous les conteneurs
docker rm $(docker ps -a -q)

# Supprimer toutes les images Docker
docker rmi $(docker images -q)

# Supprimer tous les volumes Docker
docker volume rm $(docker volume ls -q)

# Supprimer tous les réseaux Docker
docker network rm $(docker network ls -q)
