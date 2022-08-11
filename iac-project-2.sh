#!/bin/bash

echo "##### Projeto 2 Linux Experience ####"
echo "Update dos repositórios"
apt-get update
apt-get upgrade -y

echo "Instalação do Apache2"
apt install apache2 -y

echo "Instalar unzip"
apt install unzip -y

echo "Mudando para o diretorio /tmp"
cd /tmp

echo "Efetuar download da aplicação"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando com unzip"
unzip main.zip

echo "Copiando arquivos para o diretorio do apache"
cd linux-site-dio-main
cp -R -v *.* /var/www/html/
