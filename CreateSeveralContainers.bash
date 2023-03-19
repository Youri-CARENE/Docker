#!/bin/bash

# Create a bridge network for the containers
docker network create my-network

# Create 5 containers with Ubuntu images
for i in {1..5}; do
    docker run -d --name container-$i --network my-network ubuntu
done
