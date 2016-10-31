#!/usr/bin/env bash

# Get information on a homebrew formula quickly
alias bi='brew info '

# Clean up homebrew cached downloads
alias brewclean='brew cleanup -s --force && brew cask cleanup'

# List installed formulas that depend on the given formula
alias brewdep='brew uses --installed'

# Clear screen (works with tmux)
alias c='clear'

# Colorize cat output with pygments
alias ccat='pygmentize -O style=solarizeddark -f console256 -g'

# Copy default blank package.json to current folder
alias dfpj='cp ~/default.package.json/package.json `pwd`'

# Recursively delete `.DS_Store` files
alias dskill="find . -type f -name '*.DS_Store' -ls -delete"

# Print history
alias h='history'

# Use htop without having to type password
alias htop='sudo htop'

# Get ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Jobs
# alias j='jobs'

# List all files in directory and search output with ag or sift
if which ag &> /dev/null; then
  alias lag='ls -la | ag '
fi

if which sift &> /dev/null; then
  alias las='ls -la | sift '
fi

# Automatically use sudo with mtr
alias mtr='sudo mtr'

# Enable making nested directories by default
alias mkdir='mkdir -p'

# Use local npm executables if available
alias npm-exec='PATH=$(npm bin):$PATH'

# Open current directory in OSX Finder
alias o='open .'

# Reload shell
alias r='exec $SHELL -l'

# Fix 'ls' typing errors
alias sl='ls'

# Enable aliases to be sudo’ed
alias sudo='sudo '

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
alias dflb='cd ~; cp .agignore .bash_aliases .bash_profile .bash_prompt .bashrc .dircolors .editorconfig .exports .functions .gemrc .gitconfig .hushlogin .inputrc .sift.conf .tmux.conf .vimrc ~/localdotfilesbackup'

# Back up OSX dotfiles to Dropbox
alias dfdb='cd ~; cp .agignore .bash_aliases .bash_profile .bash_prompt .bashrc .dircolors .editorconfig .exports .functions .gemrc .gitconfig .hushlogin .inputrc .sift.conf .tmux.conf .vimrc ~/Dropbox/dotfiles'

# Back up OSX dotfiles to Github repo and check diff
alias dfgb='cd ~; cp .agignore .bash_aliases .bash_profile .bash_prompt .bashrc .dircolors .editorconfig .exports .functions .gemrc .gitconfig .hushlogin .inputrc .sift.conf .tmux.conf .vimrc ~/github/repos/public/dotfiles/sierra && cd ~/github/repos/public/dotfiles/sierra && git diff'

## Git ##

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  complete -o default -o nospace -F _git g;
fi;

# TJ Hollowaychuck's git aliases, modified
alias ga="git add"
alias gac="git commit -a -m"
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -D"
alias gc="git commit -m"
alias gcl='git clone'
alias gcob="git checkout -b"
alias gcp="git cherry-pick"
alias gd='git diff'
alias gdumno='git diff upstream/master --name-only'
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias gm="git merge --ff"
alias gpt="git push --tags"
alias gpom="git pull --rebase origin master"
alias grau="git remote add upstream"
alias grh="git reset --hard"

alias gcb="git-create-branch"
alias gco="git checkout"
alias gdb="git-delete-branch"
alias gdno='git diff --name-only'
alias gp="git push"
alias gpf="git push --force"
alias gpum="git pull --rebase upstream master"
alias gdum='git diff upstream/master'
alias gs="git status"
alias gws="git grep -I --name-only -z -e '' | xargs -0 sed -i -e 's/[ \t]\+\(\r\?\)$/\1/'"

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
alias n4='nvm use lts/argon'
alias n6='nvm use lts/boron'
alias n7='nvm use v7'
alias ns='nvm use system'

## Package manager updates ##
# Update all (brew, gems, go packages, git clones, pip packages, tmux plugins, vim plugins) and check npm
alias ua='git-repo-updater && bu && du && gu && vu && pu && tu && ncu -g'

# Homebrew: Run daily operations
alias bu='brew update; brew upgrade; brew cleanup; brew cask cleanup; brew prune; brew doctor'

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

