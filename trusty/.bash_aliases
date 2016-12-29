#!/usr/bin/env bash

## Core functions ##
# Enable aliases to be sudo’ed
alias sudo='sudo '

# Enable making nested directories by default
alias mkdir='mkdir -p'

# Print human-readable $PATH
alias path='echo $PATH | tr -s ":" "\n"'

# Reload shell
alias r='exec $SHELL -l'

# Exit shell
alias x="exit"

# Clear terminal screen (works in tmux)
alias c='clear'

# Git status
alias g='git status'

# Print history
alias h='history'

## Dotfiles management ##
# Quickly edit dotfiles
alias ba="vim ~/.bash_aliases"
alias br="vim ~/.bashrc"
alias tc="vim ~/.tmux.conf"
alias vr="vim ~/.vimrc"

# Back up Ubuntu dotfiles to local directory
alias dflb='cd ~; cp ~/.agignore .bash_aliases .bash_profile .bash_prompt .bashrc .curlrc .editorconfig .functions .gemrc .gvimrc .hgignore .inputrc .sift.conf .tmux.conf .vimrc .wgetrc ~/localdotfilesbackup'

# Back up OSX dotfiles to Dropbox
alias dfdb='cd ~; cp ~/.agignore .bash_aliases .bash_profile .bash_prompt .bashrc .curlrc .editorconfig .functions .gemrc .gvimrc .hgignore .inputrc .sift.conf .tmux.conf .vimrc .wgetrc ~/Dropbox/dotfiles/ubuntu'

# Back up OSX dotfiles to Github repo and check diff
alias dfgb='cd ~; cp ~/.agignore .bash_aliases .bash_profile .bash_prompt .bashrc .curlrc .editorconfig .functions .gemrc .gvimrc .hgignore .inputrc .sift.conf .tmux.conf .vimrc .wgetrc ~/github/repos/public/dotfiles/ubuntu && cd ~/github/repos/public/dotfiles && git diff'

## Navigation ##
# Go back from current directory
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../../"
alias ......="cd ../../../../../../"

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

## npm ##
# List top-level npm global modules
alias ng='npm -g ls --depth=0'

# List outdated npm global modules
alias ngo='npm -g outdated'

# List top-level npm local modules
alias nl='npm ls --depth=0'

# List outdated npm local modules
alias nlo='npm outdated'

# Tmux: Update, install, and remove unused plugins
alias tu='~/.tmux/plugins/tpm/bin/update_plugins all &~/.tmux/plugins/tpm/bin/install_plugins && ~/.tmux/plugins/tpm/bin/clean_plugins'

# Vim: Upgrade vim-plug, update, install, and remove unused plugins
alias vu='vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall'
