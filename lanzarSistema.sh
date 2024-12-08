#!/bin/bash

# Descargamos la imagen de Docker
sudo docker pull hehedaniel/wellnesstrackback:v1

# Creas la red para el contenedor
sudo docker network create --driver bridge --subnet 172.16.0.0/16 --gateway 172.16.0.1 Wellnesstrack-red

# Creas el contenedor en base a la imagen que descargamos anteriormente

sudo docker run -d --name wellnesstrackback -p 8080:80 -p 8081:3306 -p 8000:8000 --ip 172.16.0.8 --network Wellnesstrack-red hehedaniel/wellnesstrackback:v1 /bin/bash -c "./lanzar.sh"

cd WellnessTrack-angular
npm install
ng serve -o
