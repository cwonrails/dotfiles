mkdir -p ~/AUR
cd ~/AUR
wget https://aur.archlinux.org/packages/br/broadcom-wl/broadcom-wl.tar.gz
wget https://aur.archlinux.org/packages/co/cower/cower.tar.gz
wget https://aur.archlinux.org/packages/pa/pacaur/pacaur.tar.gz
tar zxvf broadcom-wl.tar.gz
tar zxvf cower.tar.gz
tar zxvf pacaur.tar.gz
cd broadcom-wl
sudo makepkg -si broadcom-wl
cd ..
cd cower
sudo makepkg -si cower
cd ..
cd pacaur
sudo makepkg -si pacaur
cd ~/
sudo pacman -Syu
