#!/usr/bin/env bash

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clear screen (works in tmux)
alias c='clear'

# Start distraction-free writing
alias dfw='vim +Goyo '

# Print history
alias h='history'

# Show jobs
alias j='jobs'

# Allow making nested directories
alias mkdir='mkdir -p'

# Quick neovim
alias nv='nvim'

# Reload bash
alias r='. ~/.bashrc'

# Exit shell
alias x="exit"

# Quickly edit dotfiles
alias ba="vim ~/.bash_aliases"
alias bp="vim ~/.bash_profile"
alias br="vim ~/.bashrc"
alias ec="vim ~/.editorconfig"
alias tc="vim ~/.tmux.conf"
alias vr="vim ~/.vimrc"

# Back up OSX dotfiles to local directory
alias dflb="cd ~/; cp ~/.agignore .bash_aliases .bashrc .bash_profile .bash_prompt .extra .editorconfig .gemrc .gitattributes .gitconfig .gitignore .hgignore .hushlogin .ideavimrc .npmrc .path .profile .tmux.conf .vimrc ~/localdotfilesbackup"

# Back up OSX dotfiles to Dropbox
alias dfdb="cd ~/; cp ~/.agignore .bash_aliases .bashrc .bash_profile .bash_prompt .extra .editorconfig .gemrc .gitattributes .gitconfig .gitignore .hgignore .hushlogin .ideavimrc .npmrc .path .profile .tmux.conf .vimrc ~/Dropbox/dotfiles"

# Back up OSX dotfiles to Github repo
alias dfg="cd ~/github/repos/dotfiles && git pull --force && cd ~/ && cp .agignore .bash_aliases .bashrc .bash_profile .bash_prompt .editorconfig .gemrc .gitattributes .gitignore .hgignore .hushlogin .tmux.conf .vimrc ~/github/repos/dotfiles/yosemite && cd ~/github/repos/dotfiles/yosemite && git status"

# Open current directory in Finder
alias f="open ."

# Force delete all trash on Mac
alias te="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

## Git ##
alias ga='git add '
alias gaa='git add -A'
alias gc='git commit'
alias gp='git push'

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

# Go to IDEA Projects folder
alias ip="cd ~/IdeaProjects"

## node ##
# change node version with nvm
alias ns="nvm use system"
alias n10="nvm use 0.10"
alias n12="nvm use 0.12"
alias nio="nvm use iojs"

## npm ##
# List top-level npm global modules
alias ng="npm -g ls --depth=0"

# List top-level npm local modules
alias nl="npm ls --depth=0"

# List outdated npm global modules
alias ngo="npm-check-updates -g"

# List outdated npm local modules
alias nlo="npm-check-updates"

# Update outdated npm global modules (interactive)
alias ngu="npm-check -g -u"

# Update outdated npm local modules (interactive)
alias nlu="npm-check -u"

## Package Managers ##
# Update all (runs below operations and checks for outdated npm global modules)
alias ua="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor; go get -u all; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U; gem update; gem cleanup; vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall; npm-check-updates -g"

# Run all Homebrew operations
alias bu="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor"

# Update and cleanup all Ruby gems
alias gu="gem update; gem cleanup"

# Upgrade all pip packages (source: https://stackoverflow.com/a/3452888)
alias pu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Upgrade vim-plug, update plugins, install new plugins, and remove unused plugins
alias vu="vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall"
