#!/usr/bin/env bash

## General aliases ##
# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clean up homebrew cached downloads
alias brewclean='brew cleanup -s --force && brew cask cleanup'

# List installed formulas that depend on the given formula
alias brewdep='brew uses --installed'

# Clear terminal screen (works in tmux)
alias c='clear'

# Recursively delete `.DS_Store` files
alias dskill="find . -type f -name '*.DS_Store' -ls -delete"

# Git
alias gd='git diff'
alias gdno='git diff --name-only'
alias gs='git status'

# Print history
alias h='history'

# run htop without sudo
alias htop='sudo htop'

# Get ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Jobs
alias j='jobs'

# Enable making nested directories by default
alias mkdir='mkdir -p'

# View npm module docs via man-n
alias man='man-n --link'

# Use local npm executables if available
alias npm-exec='PATH=$(npm bin):$PATH'

# Open current directory in OSX Finder
alias o='open .'

# Reload shell
alias r='exec $SHELL -l'

# Fix 'ls' typing errors
alias sl='ls'

# Force delete trash on local + mounted file systems; trash Apple System Logs
alias te="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Exit shell
alias x='exit'

## Dotfiles management ##
# Quickly edit dotfiles
alias ba='vim ~/.bash_aliases'
alias bp='vim ~/.bash_profile'
alias br='vim ~/.bashrc'
alias tc='vim ~/.tmux.conf'
alias vr='vim ~/.vimrc'

# Perform all dotfiles backup operations'
alias dfbu='dflb && dfdb && dfgb'

# Back up OSX dotfiles to local directory
alias dflb='cd ~; cp ~/.agignore .bash_aliases .bash_profile .bash_prompt .bashrc .editorconfig .eslintrc.js .functions .gemrc .gitattributes .gitconfig .gvimrc .hgignore .hushlogin .inputrc .screenrc .sift.conf .tmux.conf .vimrc ~/localdotfilesbackup'
#
# Back up OSX dotfiles to Dropbox
alias dfdb='cd ~; cp ~/.agignore .bash_aliases .bash_profile .bash_prompt .bashrc .editorconfig .eslintrc.js .functions .gemrc .gitattributes .gitconfig .gvimrc .hgignore .hushlogin .inputrc .screenrc .sift.conf .tmux.conf .vimrc ~/Dropbox/dotfiles'

# Back up OSX dotfiles to Github repo and check diff
alias dfgb='cd ~; cp ~/.agignore .bash_aliases .bash_profile .bash_prompt .bashrc .editorconfig .eslintrc.js .functions .gemrc .gitattributes .gitconfig .gvimrc .hgignore .hushlogin .inputrc .screenrc .sift.conf .tmux.conf .vimrc ~/github/repos/public/dotfiles/elcapitan && cd ~/github/repos/public/dotfiles/elcapitan && git diff'

## Navigation ##
# Go back from current directory
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias ......='cd ../../../../../../'

# Go back to previous directory
alias b='cd - '

# Go to Dropbox directory
alias db='cd ~/Dropbox'

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

## npm ##
# List top-level npm global modules
alias ng='npm -g ls --depth=0'

# List top-level npm local modules
alias nl='npm ls --depth=0'

## Package manager updates ##
# Update all (brew, gems, go packages, git clones, pip packages, tmux plugins, vim plugins) and empty trash
alias ua="brew update; brew upgrade --all; brew prune; brew doctor; brew cleanup -s --force; gem update; gem cleanup; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U; ~/.tmux/plugins/tpm/bin/install_plugins; ~/.tmux/plugins/tpm/bin/update_plugins all; ~/.tmux/plugins/tpm/bin/clean_plugins && vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall && gitup && david u -g --ignore jspm npm webpack"

# Homebrew: Run daily operations
alias bu='brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor'

# Ruby: Update and clean up all gems
alias gu='gem update; gem cleanup'

# npm: Update all global npm packages except npm and jspm and webpack betas
alias ngu='david u -g --ignore jspm npm webpack'

# Python: Upgrade all pip packages
alias pu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Tmux: Update, install, and remove unused plugins
alias tu='~/.tmux/plugins/tpm/bin/update_plugins all &~/.tmux/plugins/tpm/bin/install_plugins && ~/.tmux/plugins/tpm/bin/clean_plugins'

# Vim: Upgrade vim-plug, update, install, and remove unused plugins
alias vu='vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall'

