#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get update
sudo apt-get autoclean
sudo apt-get autoremove

sudo apt-get -y install build-essential software-properties-common vim git wget clang editorconfig sakura chromium-browser silversearcher-ag zip i3 aptitude synaptic
sudo apt-get update
sudo apt-get autoclean
sudo apt-get autoremove

# backup system files
cd ~
sudo cp /etc/apt/sources.list ~/
sudo cp .bashrc bashrc

# vim
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/spell
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/swap

# git
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get -y install git-core
sudo apt-get update
sudo apt-get -y upgrade
mkdir -p ~/github/clones
mkdir -p ~/github/forks
mkdir -p ~/github/repos/public
mkdir -p ~/github/repos/private
mkdir ~/gitlab

# tmux
cd ~
sudo apt-get -y build-dep tmux
sudo apt-get update
wget https://github.com/tmux/tmux/releases/download/2.1/tmux-2.1.tar.gz
tar -xvf tmux*.tar.gz
cd tmux*
./configure && make
sudo make install
cd ~/

# n (node and npm version manager)
curl -L http://git.io/n-install | bash -s -- -y lts

# nginx
wget http://nginx.org/keys/nginx_signing.key | sudo apt-key add -
echo "deb http://nginx.org/packages/ubuntu/ trusty nginx" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://nginx.org/packages/ubuntu/ trusty nginx" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y install nginx

# go
curl -O https://storage.googleapis.com/golang/go1.5.3.linux-amd64.tar.gz
tar -xvf go1.5.3.linux-amd64.tar.gz
sudo mv go /usr/local
mkdir -p ~/go/bin
mkdir -p ~/go/pkg
mkdir -p ~/go/src

# python
sudo apt-get -y install python-pip
sudo apt-get update

# ansible
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible
sudo apt-get update

# git-extras
cd ~
git clone https://github.com/tj/git-extras.git
cd git-extras
git checkout $(git describe --tags $(git rev-list --tags --max-count=1))
sudo make install

# terraform
cd ~
wget https://releases.hashicorp.com/terraform/0.6.11/terraform_0.6.11_linux_amd64.zip
mkdir terraform
unzip terraform_0.5.11_linux_amd64.zip -d ~/terraform
sudo mv terraform usr/local

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get -y install spotify-client

# mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get -y install mongodb-org

# google chrome
# cd ~
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo dpkg -i google-chrome*.deb

# powerline fonts
cd ~/github/clones/
git clone https://github.com/powerline/fonts
# cd fonts
# ./install.sh

# hub
wget https://github.com/github/hub/releases/download/v2.2.3/hub-linux-amd64-2.2.3.tgz
tar -xzf hub-linux-amd64-2.2.3.tgz
mv hub /usr/local/bin/

# chruby
wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install
cd ~/

# build ruby
wget -O ruby-install-0.6.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz
tar -xzvf ruby-install-0.6.0.tar.gz
cd ruby-install-0.6.0/
sudo make install
ruby-install ruby 2.3.0

# virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y install virtualbox-5.0

# vagrant
wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
sudo dpkg -i vagrant_1.8.1_x86_64.deb
