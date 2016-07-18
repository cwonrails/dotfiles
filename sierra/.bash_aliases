#!/usr/bin/env bash

# Clean up homebrew cached downloads
alias brewclean='brew cleanup -s --force && brew cask cleanup'

# List installed formulas that depend on the given formula
alias brewdep='brew uses --installed'

# Clear screen quickly (works in tmux)
alias c='clear'

# Colorize cat output with pygments
alias catcolor='pygmentize -O style=solarizeddark -f console256 -g'

# Copy default blank package.json to current folder
alias dfpj='cp ~/default.package.json/package.json `pwd`'

# Recursively delete `.DS_Store` files
alias dskill="find . -type f -name '*.DS_Store' -ls -delete"

# Print history
alias h='history'

# run htop without sudo
alias htop='sudo htop'

# Get ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Jobs
alias j='jobs'

# View npm module docs via man-n
alias man='man-n --link'

# Use GNU make
alias make='gmake'

# Enable making nested directories by default
alias mkdir='mkdir -p'

# Use local npm executables if available
alias npm-exec='PATH=$(npm bin):$PATH'

# Open current directory in OSX Finder
alias o='open .'

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

# Reload shell
alias r='exec $SHELL -l'

# Fast searching with sift
# alias s='sift'

# Fix 'ls' typing errors
alias sl='ls'

# Fix weird Sublime Text 3 behavior with 'subl'
# alias subl='subl -w'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Download website
alias wsdl='wget -rkp -l3 -np -nH --cut-dirs=1'

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
alias dflb='cd ~; cp .bash_aliases .bash_profile .bash_prompt .bashrc .dircolors .editorconfig .exports .functions .gemrc .gitconfig .hushlogin .inputrc .sift.conf .tmux.conf .vimrc ~/localdotfilesbackup'
#
# Back up OSX dotfiles to Dropbox
alias dfdb='cd ~; cp .bash_aliases .bash_profile .bash_prompt .bashrc .dircolors .editorconfig .exports .functions .gemrc .gitconfig .hushlogin .inputrc .sift.conf .tmux.conf .vimrc ~/Dropbox/dotfiles'

# Back up OSX dotfiles to Github repo and check diff
alias dfgb='cd ~; cp .bash_aliases .bash_profile .bash_prompt .bashrc .dircolors .editorconfig .exports .functions .gemrc .gitconfig .hushlogin .inputrc .sift.conf .tmux.conf .vimrc ~/github/repos/public/dotfiles/sierra && cd ~/github/repos/public/dotfiles/sierra && git diff'

## Git ##

# TJ Hollowaychuck's git aliases
# alias gd="git diff | subl"
alias ga="git add"
alias gbd="git branch -D"
alias gs="git status"
alias gc="git commit -m"
alias gac="git commit -a -m"
alias gd='git diff'
alias gdno='git diff --name-only'
alias gm="git merge --ff"
alias gpt="git push --tags"
alias gp="git push"
alias grh="git reset --hard"
alias gb="git branch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
# alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias gpom="git pull --rebase origin master"
alias gpum="git pull --rebase upstream master"
alias grau="git remote add upstream"
alias gcd='cd "`git rev-parse --show-toplevel`"'

# Personal Git aliases
# Quick repository optimization'
alias ggc='git gc'

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

# Go Vagrant boxes directory
alias vb='cd ~/vagrantboxes'

## npm ##
# List top-level npm global modules
alias ng='npm -g ls --depth=0'

# List top-level npm local modules
alias nl='npm ls --depth=0'

## nvm ##
# alias ns='nvm use system'
# alias n4='nvm use v4'
# alias n5='nvm use v5'
# alias n6='nvm use v6'
# alias nvm-update='cd "$NVM_DIR" && git fetch origin && git checkout `git describe --abbrev=0 --tags`'

## Package manager updates ##
# Update all (brew, gems, go packages, git clones, pip packages, tmux plugins, vim plugins) and check npm
alias ua='bu && du && gitup && gu && vu && pu && tu && ncu -g'

# Homebrew: Run daily operations
alias bu='brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor'

# Docker update all images (preserves tags)
  # shellcheck disable=SC2142
alias du="docker images | awk 'BEGIN {OFS=\":\";}NR<2 {next}{print \$1, \$2}' | xargs -L1 docker pull"

# Ruby: Update and clean up all gems
alias gu='gem update; gem cleanup'

# Python: Upgrade all pip packages
alias pu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Tmux: Update, install, and remove unused plugins
alias tu='~/.tmux/plugins/tpm/bin/update_plugins all && ~/.tmux/plugins/tpm/bin/install_plugins && ~/.tmux/plugins/tpm/bin/clean_plugins'

# Vim: Upgrade vim-plug, update, install, and remove unused plugins
alias vu='vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall'

