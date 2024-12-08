#!/bin/bash

# Este script lanzará la imagen de docker con el proyecto listo para su uso

# Instalar Docker
sudo apt install -y apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install -y docker-ce

# Instalar Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo docker network create --driver bridge --subnet 172.16.0.0/16 --gateway 172.16.0.1 Wellnesstrack-red

# Preguntar al usuario por los nombres de los contenedores
read -p "Ingrese el nombre para el contenedor del backend (presione Enter para usar 'wellnesstrackback'): " BACKEND_NAME
if [ -z "$BACKEND_NAME" ]; then
    BACKEND_NAME="wellnesstrackback"
fi

read -p "Ingrese el nombre para el contenedor del frontend (presione Enter para usar 'wellnesstrackfront'): " FRONTEND_NAME
if [ -z "$FRONTEND_NAME" ]; then
    FRONTEND_NAME="wellnesstrackfront"
fi

# Creamos el contenedor para el back

clear

sudo docker pull hehedaniel/wellnesstrackback:v1

sudo docker run -d --name "$BACKEND_NAME" -p 8080:80 -p 8081:3306 -p 8000:8000 --ip 172.16.0.8 --network Wellnesstrack-red hehedaniel/wellnesstrackback:v1 /bin/bash -c "./lanzar.sh"

# Creamos el contenedor para el front

sudo docker pull hehedaniel/wellnesstrackfront:v1

sudo docker run -d --name "$FRONTEND_NAME" -p 4200:4200 --ip 172.16.0.4 --network Wellnesstrack-red hehedaniel/wellnesstrackfront:v1 /bin/bash -c "./lanzar.sh"

# Script terminado

clear

echo "Contenedores creados con éxito."
echo ""
echo "Para acceder a los servicios, use los siguientes URLs:"
echo "Backend: http://localhost:8000/main"
echo "Frontend: http://localhost:4200"
echo "PhpMyAdmin: http://localhost:8080/phpmyadmin/index.php?route=/database/structure&db=api"