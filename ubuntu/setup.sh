#!usr/bin/env bash

sudo apt-get update
sudo apt-get -y upgrade

sudo apt-get -y install build-essential software-properties-common vim git wget clang editorconfig sakura chromium-browser

# chruby
wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install
cd ~/

# ruby-install
wget -O ruby-install-0.6.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz
tar -xzvf ruby-install-0.6.0.tar.gz
cd ruby-install-0.6.0/
sudo make install
cd ~/

# build ruby
ruby-install ruby 2.3.0

# n (node and npm version manager)
curl -L http://git.io/n-install | bash -s -- -y lts

# vagrant
wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
sudo dpkg -i vagrant_1.8.1_x86_64.deb

# nginx
wget http://nginx.org/keys/nginx_signing.key | sudo apt-key add -
echo "deb http://nginx.org/packages/ubuntu/ trusty nginx" | sudo tee /etc/apt/sources.list
echo "deb-src http://nginx.org/packages/ubuntu/ trusty nginx" | sudo tee /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y install nginx

# virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" | sudo tee /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y install virtualbox-5.0

# go
curl -O https://storage.googleapis.com/golang/go1.5.3.linux-amd64.tar.gz
tar -xvf go1.5.3.linux-amd64.tar.gz
sudo mv go /usr/local

# python
sudo apt-get -y install python-pip
sudo apt-get update

# git
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get -y install git-core

# ansible
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

# tmux
sudo apt-get -y build-dep tmux
sudo apt-get update
wget https://github.com/tmux/tmux/releases/download/2.1/tmux-2.1.tar.gz
tar -xvf tmux
cd tmux
./configure && make
sudo make install
cd ~/

# dotfiles
git clone https://github.com/cwonrails/dotfiles
cd dotfiles/ubuntu
cp .* ~/
cd ~/
