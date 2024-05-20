#!/bin/bash

# Bouw de Docker-image met de tag "demo-site"
docker build -t demo-site .

# Start een container met de naam "demo-container" op poort 81
docker run -d -p 81:81 --name demo-container demo-site