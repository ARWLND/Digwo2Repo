#!/bin/bash

# Stop de bestaande container met de naam "demo-container", als deze actief is
docker stop demo-container

# Verwijder de bestaande container met de naam "demo-container", als deze bestaat
docker rm demo-container

# Bouw de Docker-image met de tag "demo-site"
docker build -t demo-site .

# Start een nieuwe container met de naam "demo-container" op poort 81
docker run -d -p 81:80 --name demo-container demo-site