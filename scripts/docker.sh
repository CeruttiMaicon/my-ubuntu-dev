#!/bin/bash

## Instalação de dependências

sudo apt install apt-transport-https curl gnupg-agent ca-certificates software-properties-common -y &&

## Instalação Docker no Ubuntu

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" &&

sudo apt install docker-ce docker-ce-cli containerd.io -y &&

sudo usermod -aG docker $USER && 

newgrp docker &&

docker version &&

sudo systemctl status docker