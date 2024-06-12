#!/bin/bash

# Descargamos la imagen de Docker
sudo docker pull hehedaniel/backcompleto:backfuncional

# Creas la red para el contenedor
sudo docker network create --driver bridge --subnet 172.79.0.0/16 --gateway 172.79.0.1 redApi

# Creas el contenedor en base a la imagen que descargamos anteriormente
sudo docker run -d --name backXampp -p 8080:80 -p 8081:3306 -p 8000:8000 --ip 172.79.0.3 --networ redApi -v ./WellnessTrack-api:/home/docker --entrypoint /bin/sh hehedaniel/backcompleto:backfuncional -c "/opt/lampp/lampp start && cd /home/docker/Wellnesstrack-api && symfony server:start --port=8000"

cd WellnessTrack-angular
npm install
ng serve -o