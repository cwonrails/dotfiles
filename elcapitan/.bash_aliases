#!/usr/bin/env bash

# Quicker vim
alias v='vim'

## Docker Machine ##

# Print currently active machine
alias dma='docker-machine active'

# Create a new machine (assumes Virtualbox)
dmcreate() {
docker-machine create --driver virtualbox "$1"
}

# Get a machine's connection config
dmconf() {
docker-machine config "$1"
}

# Get a machine's ip
dmip() {
docker-machine ip "$1"
}

# Inspect a machine
dminspect() {
docker-machine inspect "$1"
}

# Kill a machine
dmkill() {
docker-machine kill "$1"
}

# List existing machines
alias dmls='docker-machine ls'

# Remove an existing machine
dmrm() {
docker-machine rm "$1"
}

# Restart a machine
dmrestart() {
docker-machine restart "$1"
}

# Run a command or ssh into a machine
dmssh() {
docker-machine ssh "$1"
}

# Get a machine's status
dmstatus() {
docker-machine status "$1"
}

# Start a machine
dmstart() {
 docker-machine start "$1"
}

# Stop a machine
dmstop() {
 docker-machine stop "$1"
}

# Upgrade a machine to most recent version of Docker
dmupgrade() {
docker-machine upgrade "$1"
}

# Get a machine's URL
dmurl() {
docker-machine url "$1"
}

# Use a machine (two shortcuts; former matches docker-machine prompt.)
dmenv() {
eval "$(docker-machine env "$1")"
}

dmuse() {
eval "$(docker-machine env "$1")"
}

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clean up homebrew cached downloads
alias brewclean='brew cleanup -s --force'

# Fix homebrew permissions due to SIP
alias brewfix='sudo chown $(whoami):admin /usr/local && sudo chown -R $(whoami):admin /usr/local'

# Clear terminal screen (works in tmux)
alias c='clear'

# Run checksums
alias checksum='md5sum'

# Correct incorrectly typed commands
alias f='fuck'

# Get file size
alias fs='ls -sh'

# Print history
alias h='history'

# Get ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Show jobs
alias j='jobs'

# Enable making nested directories by default
alias mkdir='mkdir -p'

# Open current directory in OSX Finder
alias o='open .'

# Reload shell
alias r='exec $SHELL -l'

# List files and directories in folder by size
alias size='find . -type f -printf "%s\t%p\n" | sort -n'

# List hard drive space
alias ds='df -m'

# Go to Vagrant Boxes folder
alias vb='cd ~/vagrantboxes'

# Exit shell
alias x='exit'

# Quickly edit dotfiles
alias ba='vim ~/.bash_aliases'
alias bp='vim ~/.bash_profile'
alias br='vim ~/.bashrc'
alias bre='vim ~/.bashrc-extra'
alias ga='vim ~/.gitattributes'
alias gc='vim ~/.gitconfig'
alias gi='vim ~/.gitignore'
alias ir='vim ~/.inputrc'
alias tc='vim ~/.tmux.conf'
alias vr='vim ~/.vimrc'

# Back up OSX dotfiles to local directory
alias dflb='cd ~/; cp ~/.agignore .bash_aliases .bash_profile .bash_prompt .bashrc .exports .extra .functions .gemrc .gitattributes .gitconfig .gitignore .gvimrc .hushlogin .npmrc .path .profile .tmux.conf .vimrc ~/localdotfilesbackup'

# Back up OSX dotfiles to Dropbox
alias dfdb='cd ~/; cp ~/.agignore .bash_aliases .bash_profile .bash_prompt .bashrc .exports .extra .gemrc .functions .gitattributes .gitconfig .gitignore .gvimrc .hgignore .hushlogin .npmrc .path .profile .tmux.conf .vimrc ~/Dropbox/dotfiles'

# Back up OSX dotfiles to Github repo
alias dfg='cd ~/github/repos/public/dotfiles && git pull --force && cd ~/ && cp .agignore .bash_aliases .bash_profile .bash_prompt .bashrc .exports .functions .gemrc .gitattributes .gitignore .gvimrc .hgignore .hushlogin .npmrc .path .profile .tmux.conf .vimrc ~/github/repos/public/dotfiles/elcapitan && cd ~/github/repos/public/dotfiles; git status'

# Force empty all trashed files
alias te='sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl'

## Navigation ##
# Go back from current directory
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias ......='cd ../../../../../../'

# Go back to previous directory
alias b='cd - '

# Go to bash scripts directory
alias bs='cd ~/bashscripts'

# Go to Desktop folder
alias dt='cd ~/Desktop'

# Go to Documents folder
alias doc='cd ~/Documents'

# Go to Downloads folder
alias dl='cd ~/Downloads'

# Go to GitHub clones folder
alias ghc='cd ~/github/clones'

# Go to GitHub delete repos folder
alias ghdr='cd ~/github/deletedrepos'

# Go to Github forks folder
alias ghf='cd ~/github/forks'

# Go to Github repos folder
alias ghr='cd ~/github/repos'

# Go to Home directory
alias hd='cd ~/'

# Go to Music folder
alias mu='cd ~/Music'

## nvm ##
alias ns='nvm use system'
alias n3='nvm use v3.3.1'
alias n4='nvm use v4'
alias n10='nvm use v0.10'
alias n12='nvm use v0.12'

## npm ##
# List top-level npm global modules
alias ng='npm -g ls --depth=0'

# List outdated npm global modules
alias ngo='npm-check -u -g'

# List top-level npm local modules
alias nl='npm ls --depth=0'

# List outdated npm local modules
alias nlo='npm-check -u'

## Package Management ##

# Update all - runs all below and checks for outdated global npm modules
alias ua="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor; gem update; gem cleanup; go get -u all; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U; ~/.tmux/plugins/tpm/bin/install_plugins; ~/.tmux/plugins/tpm/bin/update_plugins all; ~/.tmux/plugins/tpm/bin/clean_plugins && vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall && npm -g outdated"

# Run all homebrew operations
alias bu='brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor'

# Upgrade all go packages
alias ggu='go get -u all'

# Update and cleanup all Ruby gems
alias gu='gem update; gem cleanup'

# Upgrade all pip packages
alias pu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Install, update, and remove unused tmux plugins
alias tu='~/.tmux/plugins/tpm/bin/install_plugins && ~/.tmux/plugins/tpm/bin/update_plugins all && ~/.tmux/plugins/tpm/bin/clean_plugins'

# Upgrade vim-plug, update plugins, install new plugins, and remove unused plugins
alias vu='vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall'
