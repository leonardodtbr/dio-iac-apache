#!/bin/bash

# Atualizando o servidor
sudo apt update
sudo apt upgrade -y

# Instalando o Apache
sudo apt install apache2 -y

# Instalando o unzip
sudo apt install unzip -y

# Baixando o template no repositorio publico da DIO no diretorio tmp
cd /tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
sudo unzip main.zip

# Enviando arquivos para o diretório do Apache
sudo mv -f linux-site-dio-main/* /var/www/html/
