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

# Make list of installed packages
alias makelist='pacaur -Q'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clear terminal screen (works in tmux)
alias c='clear'

# Print history
alias h='history'

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
alias tc='vim ~/.tmux.conf'
alias vr='vim ~/.vimrc'
alias xr='vim ~/.xinitrc'

## Navigation ##
# Go backwards from current directory
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias ......='cd ../../../../../../'

# Return to previous directory
alias b='cd - '

# Go to Dropbox folder
alias db='cd ~/Dropbox'

# Go to Downloads folder
alias dl='cd ~/Downloads'

# Go to Desktop folder
alias dt='cd ~/Desktop'

# Go to GitHub clones folder
alias ghc='cd ~/github/clones'

# Go to Github forks folder
alias ghf='cd ~/github/forks'

# Go to Github repos folder
alias ghr='cd ~/github/repos'

# Go to Home directory
alias hd='cd ~'

## npm ##
# List top-level npm global modules
alias ng='npm -g ls --depth=0'

# List top-level npm local modules
alias nl='npm ls --depth=0'

# List outdated global modules
alias ngo='ncu -g'

# Upgrade vim-plug, update plugins, install new plugins, and remove unused plugins
alias vu="vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall"
