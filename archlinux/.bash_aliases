#!/usr/bin/env bash

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clear terminal screen (works well in tmux)
alias c='clear'

# Go to dotfiles repo folder
alias dff='cd ~/github/repos/dotfiles/archlinux'

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

# Reload shell
alias r='exec $SHELL -l'

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

## Git ##
alias ga='git add '
alias gaa='git add -A'
alias gc='git commit'
alias ge='git add -A && git commit && git push'
alias gp='git push'

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
