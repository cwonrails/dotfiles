#!/usr/bin/env bash

## General aliases ##
# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clean up homebrew cached downloads
alias brewclean='brew cleanup -s --force'

# List installed formulas that depend on the given formula
alias brewdep='brew uses --installed'

# Clear terminal screen (works in tmux)
alias c='clear'

# Copy default package.json to current folder
alias dfpj='cp ~/default.package.json/package.json `pwd`'

# Recursively delete `.DS_Store` files
alias dskill="find . -name '*.DS_Store' -type f -ls -delete"

# Print history
alias h='history'

# Hide and show OSX desktop
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# run htop without sudo
alias htop='sudo htop'

# Get ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Enable making nested directories by default
alias mkdir='mkdir -p'

# Start new project
alias np='mkdir ~/gitlab/new && cd ~/gitlab/new && cp -R ~/base-repo/* `pwd` && cp ~/base-repo/.* `pwd`'

# Update nvm
alias nvm-update='cd "$NVM_DIR" && git pull origin master && git checkout `git describe --abbrev=0 --tags`'

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

# Get current week of the month
alias week='date +%V'

## Git ##
alias g='git'

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
alias dflb='cd ~; cp ~/.agignore .bash_aliases .bash_profile .bash_prompt .bashrc .curlrc .editorconfig .functions .gemrc .gitattributes .gitconfig .gvimrc .hgignore .hushlogin .inputrc .screenrc .sift.conf .tmux.conf .vimrc .wgetrc ~/localdotfilesbackup'

# Back up OSX dotfiles to Dropbox
alias dfdb='cd ~; cp ~/.agignore .bash_aliases .bash_profile .bash_prompt .bashrc .curlrc .editorconfig .functions .gemrc .gitattributes .gitconfig .gvimrc .hgignore .hushlogin .inputrc .screenrc .sift.conf .tmux.conf .vimrc .wgetrc ~/Dropbox/dotfiles'

# Back up OSX dotfiles to Github repo and check diff
alias dfgb='cd ~; cp ~/.agignore .bash_aliases .bash_profile .bash_prompt .bashrc .curlrc .editorconfig .functions .gemrc .gitattributes .gitconfig .gvimrc .hgignore .hushlogin .inputrc .screenrc .sift.conf .tmux.conf .vimrc .wgetrc ~/github/repos/public/dotfiles/elcapitan && cd ~/github/repos/public/dotfiles/elcapitan && git diff'

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

# Go to Vagrant boxes directory
alias vb='cd ~/vagrantboxes'

# Go to WebStorm projects folder
alias wsp='cd ~/WebstormProjects/'

## npm ##
# List top-level npm global modules
alias ng='npm -g ls --depth=0'

# List top-level npm local modules
alias nl='npm ls --depth=0'

## Package manager updates ##
# Update all (brew, gems, go packages, git clones, pip packages, tmux plugins, vim plugins) and empty trash
alias ua="brew update; brew upgrade --all; brew prune; brew doctor; brew cleanup -s --force; gem update; gem cleanup; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U; ~/.tmux/plugins/tpm/bin/install_plugins; ~/.tmux/plugins/tpm/bin/update_plugins all; ~/.tmux/plugins/tpm/bin/clean_plugins && vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall && gitup && npm -g outdated"

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

## ls colors and aliases ##
# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

# Set ls colors
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# List all files in long format
alias la="ls -laF ${colorflag}"

# List only directories
alias ld="ls -lF ${colorflag} | grep --color=never '^d'"

# List only hidden files
alias lh="ls -d .* ${colorflag}"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

