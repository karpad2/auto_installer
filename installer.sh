#!/bin/bash
if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi
echo $USER
pacman-mirrors
pacman -Syu --noconfirm yay zsh mc qbittorent wireshark gnome-disk-utility
#wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O 

su karpad2 -c 'sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" "" --unattended'
rm -rf install.sh
sudo -u karpad2 yay -S --noconfirm arduino-beta-bin             
sudo -u karpad2 yay -S --noconfirm obs-studio-git
sudo -u karpad2 yay -S --noconfirm p7zip-gui
sudo -u karpad2 yay -S --noconfirm balena-etcher
sudo -u karpad2 yay -S --noconfirm stacer
sudo -u karpad2 yay -S --noconfirm discord
sudo -u karpad2 yay -S --noconfirm visual-studio-code-bin
sudo -u karpad2 yay -S --noconfirm gitkraken
sudo -u karpad2 yay -S --noconfirm google-chrome chrome-remote-desktop
sudo -u karpad2 yay -S --noconfirm opera-beta opera-beta-ffmpeg-codecs
sudo -u karpad2 yay -S --noconfirm remmina
sudo -u karpad2 yay -S --noconfirm libreoffice-fresh
sudo -u karpad2 yay -S --noconfirm wine
sudo -u karpad2 yay -S --noconfirm stacer

exit
