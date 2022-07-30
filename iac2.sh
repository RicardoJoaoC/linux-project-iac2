#!/bin/bash

echo "Instalando pacotes e atualizando o servidor..."
echo "Deseja continuar?[S/N]"
read RESPOSTA
test "$RESPOSTA" = "N" && exit
apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Copiando os arquivos para as pastas do Apache..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
