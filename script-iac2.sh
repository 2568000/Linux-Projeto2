#!/bin/bash

echo "Atualizando o Servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y

echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/2568000/snap.firefox/archive/refs/heads/main.zip
unzip main.zip
cd snap.firefox
cp -R * /var/www/html/

