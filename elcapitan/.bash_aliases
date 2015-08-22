#!/usr/bin/env bash

## Ghost-Vagrant ##

alias gvf='cd ~/vagrantboxes/ghost-vagrant/fork/Ghost-Vagrant'
alias gvu='cd ~/vagrantboxes/ghost-vagrant/upstream'

## Docker Machine ##

# Print currently active machine
alias dmactive='docker-machine active'

# Create a new machine (assumes Virtualbox)
dmcreate() {
	docker-machine create --driver virtualbox "$1"
}

# Get a machine's connection config
dmconf(){
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

# Regenerate certs for a machine
dmrc() {
	docker-machine regenerate-certs "$1"
}

# Remove an existing machine
dmrm() {
	docker-machine rm "$1"
}

# Restart a machine
dmrs() {
	docker-machine restart "$1"
}

# Run a command or ssh into a machine
dmssh() {
	docker-machine ssh "$1"
}

# Get a machine's status
dmstat() {
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
	eval $(docker-machine env "$1")
}

dmuse() {
	eval $(docker-machine env "$1")
}

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clear terminal screen (works in tmux)
alias c='clear'

# Run checksums
alias checksum='md5sum'

# Print history
alias h='history'

# Show jobs
alias j='jobs'

# Enable making nested directories by default
alias mkdir='mkdir -p'

# Open current directory in OSX Finder
alias o='open .'

# Reload bash
alias r='exec $SHELL -l'

# List files and directories in folder by size
alias size='find . -type f -printf "%s\t%p\n" | sort -n'

# List hard drive space
alias space='df -m'

# Go to Vagrant Boxes folder
alias vb='cd ~/vagrantboxes'

# Exit shell
alias x='exit'

# Quickly edit dotfiles
alias ba='vim ~/.bash_aliases'
alias bp='vim ~/.bash_profile'
alias br='vim ~/.bashrc'
alias ir='vim ~/.inputrc'
alias tc='vim ~/.tmux.conf'
alias vr='vim ~/.vimrc'

# Back up OSX dotfiles to local directory
alias dflb='cd ~/; cp ~/.bash_aliases .bashrc .bash_profile .bash_prompt .extra .editorconfig .gemrc .gitattributes .gitconfig .gitignore .gvimrc .hushlogin .npmrc .profile .tmux.conf .vimrc ~/localdotfilesbackup'

# Back up OSX dotfiles to Dropbox
alias dfdb='cd ~/; cp ~/.bash_aliases .bashrc .bash_profile .bash_prompt .extra .editorconfig .gemrc .gitattributes .gitconfig .gitignore .gvimrc .hushlogin .npmrc .path .profile .tmux.conf .vimrc ~/Dropbox/dotfiles'

# Back up OSX dotfiles to Github repo
alias dfg="cd ~/github/repos/dotfiles && git pull --force && cd ~/ && cp .bash_aliases .bashrc .bash_profile .bash_prompt .editorconfig .gemrc .gitattributes .gitignore .gvimrc .hushlogin .npmrc .profile .tmux.conf .vimrc ~/github/repos/dotfiles/elcapitan && cd ~/github/repos/dotfiles/elcapitan && git status"

# Force empty all trashed files
alias te="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

## Navigation ##
# Go back from current directory
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../../"
alias ......="cd ../../../../../../"

# Go back to previous directory
alias b="cd - "

# Go to bash scripts directory
alias bs="cd ~/bashscripts"

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

# Go to Music folder
alias mf="cd ~/Music"

## nvm ##
alias ns='nvm use system'
alias n10='nvm use v0.10'
alias n12='nvm use v0.12'
alias nio='nvm use iojs'

## npm ##
# List top-level npm global modules
alias ng='npm -g ls --depth=0'

# List top-level npm local modules
alias nl='npm ls --depth=0'

# List outdated npm local modules
alias nlo='npm-check'

# List outdated npm global modules
alias ngo='npm-check -g'

# Update outdated npm global modules (interactive)
alias ngu='npm-check -g -u'

# Update outdated npm local modules (interactive)
alias nlu='npm-check -u'

## Writing ##
# Start distraction-free writing in terminal vim
alias dfw='vim +Goyo'

## Package Management ##

# Check dependencies for installed brews
alias brewdep='brew uses --installed'

# Force cleanup homebrew cache
alias brewclean='brew cleanup -s --force'

# Get ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Update all - runs all below and checks for outdated global npm modules
alias ua="bu && gu && ggu; pu && vu"

# Run all homebrew operations
alias bu="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor"

# Update and cleanup all Ruby gems
alias gu="gem update; gem cleanup"

# Update all Go packages
alias ggu="go get -u all"

# Upgrade all pip packages (source: https://stackoverflow.com/a/3452888)
alias pu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Upgrade vim-plug, update plugins, install new plugins, and automatically remove unused plugins
alias vu="vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall"
