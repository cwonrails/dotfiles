#!/usr/bin/env bash

# Go to websites repo folder
alias sites='cd ~/github/repos/websites'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clear terminal screen (works well in tmux)
alias c='clear'

# Go to dotfiles folder
alias dff='cd ~/github/repos/dotfiles'

# Print history
alias h='history'

# Show jobs
alias j='jobs'

# Enable making nested directories by default
alias mkdir='mkdir -p'

# Make directory and cd into it
function mkcd() {
	mkdir -p "$1" && cd "$1";
}

# Open current directory in OSX Finder
alias o='open .'

# Reload bash
alias r='exec $SHELL -l'

# Go to Vagrant Boxes folder
alias vb='cd ~/vagrantboxes'
alias vbu='cd ~/vagrantboxes/ubuntu/trusty64/'

# Open current directory in vim
alias vd='vim `pwd`'

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

## Git ##
alias ga='git add '
alias gaa='git add -A'
alias gc='git commit'
alias gp='git push'

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

# List outdated npm global modules
alias ngo='npm-check-updates -g'

# List outdated npm local modules
alias nlo='npm-check-updates'

# Update outdated npm global modules (interactive)
alias ngu='npm-check -g -u'

# Update outdated npm local modules (interactive)
alias nlu='npm-check -u'

## Writing ##
# Start distraction-free writing in terminal vim
alias dfw='vim +Goyo'

## Package Managers ##

# Check deps for installed brews
alias brewdep='brew uses --installed'

# Force cleanup homebrew cache
alias brewclean='brew cleanup -s --force'

# Get ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Update all (runs below minus Go packages + checks for outdated npm global modules)
alias ua="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor; go get -u all; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U; gem update; gem cleanup; vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall; npm-check-updates -g"

# Run all homebrew operations
alias bu="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor"

# Update and cleanup all Ruby gems
alias gu="gem update; gem cleanup"

# Update all Go packages
alias ggu="go get -u all"

# Upgrade all pip packages (source: https://stackoverflow.com/a/3452888)
alias pu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Upgrade vim-plug, update plugins, install new plugins, and remove unused plugins
alias vu="vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall"
