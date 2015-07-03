#!/usr/bin/env bash

sudo apt-get -qq update
sudo apt-get -qq upgrade
sudo apt-get -qq update
sudo apt-get -qq autoclean
sudo apt-get -qq autoremove

# Install wireless firmware

sudo apt-get -qq install b43-fwcutter firmware-b43-installer
sudo apt-get -qq update

# Import Google's secure key and add to sources

wget -q -O https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

echo deb https://dl.google.com/linux/chrome/deb stable main | sudo tee /etc/apt/sources.list.d/google.list

# Import Spotify's secure key and add to sources

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886

echo deb http://repository.spotify.com testing non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# Add up-to-date Git PPA
sudo add-apt-repository -y ppa:git-core/ppa

sudo apt-get -qq update


sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E1DF1F24


