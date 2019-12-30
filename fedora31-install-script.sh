#!/bin/bash


#Before Install -> chmod u+x install.sh

# -------------VARIABLES-----------#
DIRECTORIO_DOWNLOADS="$HOME/Downloads/programas"
URL_DBEAVER="https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm"
URL_HAMACHI="https://www.vpn.net/installers/logmein-hamachi-2.1.0.203-1.x86_64.rpm" 
URL_WALLPAPER="https://www.uniqhotels.com/media/hotels/24/2.%20_aescher_alpstein_KKTvQsN.jpg"

echo "Iniciando upgrade"
sudo dnf -y update
sudo dnf upgrade --best --allowerasing --refresh -y

#atom.io
sudo rpm --import https://packagecloud.io/AtomEditor/atom/gpgkey
sudo sh -y -c 'echo -e "[Atom]\nname=Atom Editor\nbaseurl=https://packagecloud.io/AtomEditor/atom/el/7/\$basearch\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\ngpgkey=https://packagecloud.io/AtomEditor/atom/gpgkey" > /etc/yum.repos.d/atom.repo'

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y update

echo "upgrade instalando programas"
sudo dnf -y copr enable ztefn/haguichi
sudo dnf -y install gimp
sudo dnf -y install atom 
sudo dnf -y install snapd
sudo dnf -y install haguichi 
sudo dnf -y install ffmpeg #\ ffmpeg #Adds Codec Support to Firefox
sudo dnf -y install vim-enhanced

echo "PAquetes SNAP"
sudo snap install telegram-desktop
sudo snap install spotify
sudo snap install dbeaver-ce

#echo "descargando instaladores"
#mkdir "$DIRECTORIO_DOWNLOADS"
#wget -c "$URL_HAMACHI"       -P "$DIRECTORIO_DOWNLOADS"


sudo dnf remove \
-y \
gnome-shell-extension-background-logo # Logo de Fedora
