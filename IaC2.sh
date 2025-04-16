#!/bin/bash

#Scripts para provisionar um servidor web
echo 'atualizando o servidor'
apt update && apt upgrade -y
echo 'Instalando o unzip'
apt install unzip -y
echo 'Instalndo o apache'
apt install apache2 -y

echo 'Acessando o pasta tmp'
cd /tmp

echo 'Obtendo o arquivo do site'
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'Descompactando o arquivo main.zip'
unzip main.zip
echo 'Entrando na nova pasta'
cd linux-site-dio
echo 'Copiando os arquivos para o Apache'
cp -R *  /var/www/html/

echo 'processo finalizado!!'
echo ' execute o ip -a para obter o ip desse servidor e acesse o site pelo navegador
de sua preferência'

 
