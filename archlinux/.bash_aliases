#!/usr/bin/env bash

## Package Management ##

# Build package from AUR
aurb() {
    cd ~/ && git clone https://aur.archlinux.org/"$1" && cd "$1" && makepkg -sci
}

# Clone package from AUR
aurd() {
    cd ~/ && git clone https://aur.archlinux.org/"$1"
}

# Get AUR package information
alias auri='pacaur -i'

# Search AUR with pacaur
alias aurs='pacaur -s'

# Update AUR package in the current directory
auru() {
    git pull && rm -f ./*.pkg.tar.xz || true && makepkg -sci
}

# Make package
alias mp='makepkg -sci'

# Build package with pacman
alias pb='sudo pacman -S --needed --noconfirm'

# Get standard repo package info
alias pi='sudo pacman -Qi'

# Search standard packages
alias ps='pacsearch'

# Upgrade pacman packages
alias pu='sudo pacman -Syu'

# Upgrade all packages
alias pua='pacaur -Syu'

# Install packages from list
installfromlist() {
pacman -S --needed $(cat ($1).txt)
}

# Remove packages from list
removefromlist () {
pacman -Rs $(cat ($1).txt)
}

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clear terminal screen (works well in tmux)
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

# Go to dotfiles Github repo folder
alias dff='cd ~/github/repos/dotfiles'

# Back up arch dotfiles to Github repo
alias dfg="cd ~/github/repos/dotfiles && git pull --force && cd ~/ && cp .bash_aliases .bashrc .bash_profile .bash_prompt .editorconfig .gemrc .gitattributes .gitignore .gvimrc .hushlogin .npmrc .profile .tmux.conf .vimrc ~/github/repos/dotfiles/archlinux/ && cd ~/github/repos/dotfiles && git status"

## Navigation ##
# Go back from current directory
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../../"
alias ......="cd ../../../../../../"

# Go back to previous directory
alias b="cd - "

# Go to Downloads folder
alias dl="cd ~/Downloads"

# Go to Desktop folder
alias dt="cd ~/Desktop"

# Go to GitHub folder
alias gh="cd ~/github"

# Go to GitHub clones folder
alias ghc="cd ~/github/clones"

# Go to Github forks folder
alias ghf="cd ~/github/forks"

# Go to Github repos folder
alias ghr="cd ~/github/repos"

# Go to Home directory
alias hd="cd ~/"

## npm ##
# List top-level npm global modules
alias ng='npm -g ls --depth=0'

# List top-level npm local modules
alias nl='npm ls --depth=0'

# List outdated npm global modules
alias ngo='npm-check-updates -g'

# List outdated npm local modules
alias nlo='npm-check-updates'

# Update outdated npm global modules (interactive)
alias ngu='npm-check -g -u'

# Update outdated npm local modules (interactive)
alias nlu='npm-check -u'

# Upgrade vim-plug, update plugins, install new plugins, and remove unused plugins
alias vu="vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall"
