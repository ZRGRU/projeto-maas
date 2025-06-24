#!/bin/bash

# Instalar o MAAS
sudo snap install maas --channel=3.6/stable

# Inicializar o MAAS
sudo maas init region+rack
