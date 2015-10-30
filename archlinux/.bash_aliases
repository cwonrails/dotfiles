#!/usr/bin/env bash

## Arch-Specific ##

# Build package from AUR
aurb() {
    cd ~/ && git clone https://aur.archlinux.org/"$1" && cd "$1" && makepkg -sci
}

# Download package from AUR
aurd() {
    cd ~/ && git clone https://aur.archlinux.org/"$1"
}

# Update AUR package in the current directory
auru() {
    git pull && rm -f ./*.pkg.tar.xz || true && makepkg -sci
}

# Get AUR package information
alias aurinfo='pacaur -i'

# Get standard repo package information
alias pacinfo='sudo pacman -Si'

# Search AUR with pacaur
alias aursearch='pacaur -s'

# Install pacman packages
alias pacinstall='sudo pacman -S --needed --noconfirm'

# Make list of installed packages
alias makelist='pacaur -Q'

# Install packages from list
listinstall () {
pacman -S --needed $(cat ($1).txt)
}

# Remove packages from list
listremove () {
pacman -Rs $(cat ($1).txt)
}

## General ##

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clear terminal screen (works in tmux)
alias c='clear'

# Print history
alias h='history'

# Show jobs
alias j='jobs'

# Enable making nested directories by default
alias mkdir='mkdir -p'

# Reload shell
alias r='exec $SHELL -l'

# Exit shell
alias x='exit'

# Quickly edit dotfiles
alias ba='vim ~/.bash_aliases'
alias bp='vim ~/.bash_profile'
alias br='vim ~/.bashrc'
alias ir='vim ~/.inputrc'
alias tc='vim ~/.tmux.conf'
alias vr='vim ~/.vimrc'
alias xr='vim ~/.xinitrc'

## Navigation ##
# Go back from current directory
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias ......='cd ../../../../../../'

# Go back to previous directory
alias b='cd - '

# Go to Downloads folder
alias dl="cd ~/Downloads"

# Go to Desktop folder
alias dt="cd ~/Desktop"

# Go to GitHub folder
alias gh="cd ~/github"

# Go to GitHub clones folder
alias ghc='cd ~/github/clones'

# Go to Github forks folder
alias ghf='cd ~/github/forks'

# Go to Github repos folder
alias ghr='cd ~/github/repos'

# Go to Home directory
alias hd='cd ~/'

## nvm ##
alias ns='nvm use system'
alias n4='nvm use 4'
alias nio='nvm use 3'
alias n12='nvm use 0.12'
alias n10='nvm use 0.10'

## npm ##
# List top-level npm global modules
alias ng='npm -g ls --depth=0'

# List top-level npm local modules
alias nl='npm ls --depth=0'

# List outdated global modules
alias ngo='ncu -g'

# List outdated local modules
alias nlo='ncu'

# Update outdated local modules
alias nlu='ncu -u'

# Update outdated global modules (*except* npm)
alias nlu='ncu -g -u'

# Upgrade vim-plug, update plugins, install new plugins, and remove unused plugins
alias vu="vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall"
