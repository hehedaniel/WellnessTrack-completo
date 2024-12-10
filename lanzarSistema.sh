#!/bin/bash

# Descargamos la imagen de Docker
sudo docker pull hehedaniel/wellnesstrackback:v3

# Crear la red para el contenedor
sudo docker network create --driver bridge --subnet 172.16.0.0/16 --gateway 172.16.0.1 Wellnesstrack-red

# Preguntar al usuario por los nombres de los contenedores
read -p "Ingrese el nombre para el contenedor del backend (presione Enter para usar 'wellnesstrackback'): " BACKEND_NAME
if [ -z "$BACKEND_NAME" ]; then
    BACKEND_NAME="wellnesstrackback"
fi

# Crear el contenedor en base a la imagen que descargamos anteriormente
sudo docker run -d --name "$BACKEND_NAME" -p 8080:80 -p 8081:3306 -p 8000:8000 --ip 172.16.0.8 --network Wellnesstrack-red hehedaniel/wellnesstrackback:v3 /bin/bash -c "./lanzar.sh"

cd Wellnesstrack-Front
npm install
ng serve -o
