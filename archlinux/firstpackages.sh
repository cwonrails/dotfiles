#!/usr/bin/env bash

mkdir -p ~/AUR
cd ~/AUR
wget https://aur.archlinux.org/packages/br/broadcom-wl/broadcom-wl.tar.gz
wget https://aur.archlinux.org/packages/co/cower/cower.tar.gz
wget https://aur.archlinux.org/packages/pa/pacaur/pacaur.tar.gz
tar zxvf broadcom-wl.tar.gz
tar zxvf cower.tar.gz
tar zxvf pacaur.tar.gz
cd broadcom-wl
makepkg -si broadcom-wl
cd ..
cd cower
makepkg -si cower
cd ..
cd pacaur
makepkg -si pacaur
cd ~/
sudo pacman -Syu
