#!/bin/bash

# Actualizacion del sistema y descarga de paquetes necesarios

sudo apt update
sudo apt install -y nodejs npm
sudo npm install -g @angular/cli
sudo apt install -y curl php-cli git unzip
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Instalar Docker
sudo apt install -y apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install -y docker-ce

# Instalar Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

clear

# Verificar instalaciones
echo "Verificando las instalaciones..."
node -v
npm -v
ng --version
composer --version
docker --version
docker-compose --version


echo "Todo está instalado y configurado."