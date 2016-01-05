#!/usr/bin/env bash

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
alias br='vim ~/.bashrc'
alias tc='vim ~/.tmux.conf'
alias vr='vim ~/.vimrc'

## Navigation ##
# Go back from current directory
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'

# Go to Home directory
alias hd='cd ~/'

# List only hidden files
alias lh="ls -d .*"

## nvm ##
alias ns='nvm use system'
alias n4='nvm use 4'
alias n5='nvm use 5'

## npm ##

# List top-level npm global modules
alias ng='npm -g ls --depth=0'

# List outdated npm global modules
alias ngo='npm -g outdated'

# List top-level npm local modules
alias nl='npm ls --depth=0'

## Package system updates ##

# Ruby: Update and clean up all gems
alias gu='gem update; gem cleanup'

# Tmux: Update, install, and remove unused plugins
alias tu='~/.tmux/plugins/tpm/bin/update_plugins all && ~/.tmux/plugins/tpm/bin/install_plugins && ~/.tmux/plugins/tpm/bin/clean_plugins'

# Vim: Upgrade vim-plug, update, install, and remove unused plugins
alias vu='vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall'
