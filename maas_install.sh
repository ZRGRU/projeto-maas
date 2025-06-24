#!/bin/bash

# Todos os comandos devem ser executados como root
# Comandos usando como base o Fedora e variantes Red Hat

# Atualizar o sistema
sudo dnf update -y
sudo dnf upgrade -y

# Desabilitar firewalld
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo systemctl mask --now firewalld

# Instalar o snap
sudo dnf install -y snapd
# Habilitar o snapd.socket
sudo systemctl enable --now snapd.socket
# Criar um link simbólico para o diretório /snap
# Isso é necessário para que os snaps sejam acessíveis
# em /snap, como é o padrão em outras distribuições
# Isso pode ser necessário para o funcionamento de alguns snaps
# como o MAAS, que espera que o snap esteja em /snap
sudo ln -s /var/lib/snapd/snap /snap

# Recomendado reiniciar
# sudo reboot

# Instalar o MAAS
sudo snap install maas --channel=3.6/stable

# Inicializar o MAAS
sudo maas init region+rack

