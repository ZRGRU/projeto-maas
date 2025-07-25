#!/bin/bash

# Instalar o MAAS
sudo snap install maas --channel=3.6/stable
sudo snap install maas-test-db

# Inicializar o MAAS
sudo maas init region+rack

# Criar um usuário administrador
sudo maas createadmin --username=admin --email="${EMAIL}" --password="${PASSWORD}"
