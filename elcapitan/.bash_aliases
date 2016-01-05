#!/usr/bin/env bash

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clean up homebrew cached downloads
alias brewclean='brew cleanup -s --force'

# List installed formulas that depend on the given formula
alias brewdepends='brew deps --installed'

# Clear terminal screen (works in tmux)
alias c='clear'

# Correct incorrectly typed commands
alias f='fuck'

# Print history
alias h='history'

# Get ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Show jobs
alias j='jobs'

# Diff with Kaleidoscope
alias ksd='ksdiff'

# Enable making nested directories by default
alias mkdir='mkdir -p'

# Copy default package.json to current folder
alias boilerplate='cp ~/default.package.json/package.json `pwd`'

# Open current directory in OSX Finder
alias o='open .'

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

# Perform all dotfiles backup operations'
alias dfbu='dflb && dfdb && dfgb'

# Back up OSX dotfiles to local directory
alias dflb='cd ~; cp ~/.bash_aliases .bash_profile .bash_prompt .bashrc .gemrc .gvimrc .inputrc .npmrc .tmux.conf .vimrc .wgetrc ~/localdotfilesbackup'

# Back up OSX dotfiles to Dropbox
alias dfdb='cd ~; cp ~/.bash_aliases .bash_profile .bash_prompt .bashrc .gemrc .gvimrc .inputrc .npmrc .tmux.conf .vimrc .wgetrc ~/Dropbox/dotfiles'

# Back up OSX dotfiles to Github repo and check diff
alias dfgb='cd ~; cp ~/.bash_aliases .bash_profile .bash_prompt .bashrc .gemrc .gvimrc .inputrc .npmrc .tmux.conf .vimrc .wgetrc ~/github/repos/public/dotfiles/elcapitan && cd ~/github/repos/public/dotfiles && git diff'

# Check status for dotfiles GitHub repo
alias dfgs='cd ~/github/repos/public/dotfiles && git status'

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

# Go to downloads directory
alias dl='cd ~/Downloads'

# Go to desktop directory
alias dt='cd ~/Desktop'

# Go to GitHub clones directory
alias ghc='cd ~/github/clones'

# Go to GitHub forks directory
alias ghf='cd ~/github/forks'

# Go to GitHub repos directory
alias ghr='cd ~/github/repos'

# Go to home directory
alias hd='cd ~'

# Go to Vagrant boxes directory
alias vb='cd ~/vagrantboxes'

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

# List outdated npm local modules
alias nlo='npm outdated'

## Package system updates ##

# Update all (brew, gems, go packages, git clones, pip packages, tmux plugins, vim plugins)
alias ua="brew update; brew upgrade --all; brew prune; brew doctor; brew cleanup -s --force; gem update; gem cleanup; go get -u all; gitup; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U; ~/.tmux/plugins/tpm/bin/install_plugins; ~/.tmux/plugins/tpm/bin/update_plugins all; ~/.tmux/plugins/tpm/bin/clean_plugins && vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall && npm -g outdated"

# Homebrew: Run daily operations
alias bu='brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor'

# Ruby: Update and clean up all gems
alias gu='gem update; gem cleanup'

# Python: Upgrade all pip packages
alias pu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Tmux: Update, install, and remove unused plugins
alias tu='~/.tmux/plugins/tpm/bin/update_plugins all &~/.tmux/plugins/tpm/bin/install_plugins && ~/.tmux/plugins/tpm/bin/clean_plugins'

# Vim: Upgrade vim-plug, update, install, and remove unused plugins
alias vu='vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall'
