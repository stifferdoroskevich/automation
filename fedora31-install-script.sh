#!/bin/bash

###
# Force update the whole system to the latest and greatest
###

# -------------VARIABLES-----------#
DIRECTORIO_DOWNLOADS="$HOME/Downloads/programas"

URL_DBEAVER="https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm"




echo "Iniciando upgrade"

sudo dnf upgrade --best --allowerasing --refresh -y



#atom.io
sudo rpm --import https://packagecloud.io/AtomEditor/atom/gpgkey
sudo sh -c 'echo -e "[Atom]\nname=Atom Editor\nbaseurl=https://packagecloud.io/AtomEditor/atom/el/7/\$basearch\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\ngpgkey=https://packagecloud.io/AtomEditor/atom/gpgkey" > /etc/yum.repos.d/atom.repo'

echo "upgrade instalando programas"

sudo dnf install \
-y \
gimp \
atom \
snapd \

echo "PAquetes SNAP"
sudo snap install telegram-desktop
sudo snap install spotify
sudo snap install dbeaver-ce

echo "descargando instaladores"

mkdir "$DIRECTORIO_DOWNLOADS"
#wget -c "$URL_DBEAVER"       -P "$DIRECTORIO_DOWNLOADS"




sudo dnf remove \
-y \
gnome-shell-extension-background-logo `# Logo de Fedora
