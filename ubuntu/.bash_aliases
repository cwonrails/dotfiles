## Core functions ##
# Enable aliases to be sudo’ed
alias sudo='sudo '

# Apt
alias au="sudo apt-get update"
alias ac="sudo apt-get autoclean && sudo apt-get autoremove"
alias aua="sudo apt-get update && sudo apt-get upgrade && sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get update && do-release-upgrade && sudo apt-get update && sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get update"

# Print human-readable $PATH
alias path='echo $PATH | tr -s ":" "\n"'

# Reload bash
alias reload="source ~/.bashrc"

# Reboot server
alias reboot="sudo shutdown -r now"

# Exit shell
alias x="exit"

## Dotfiles management ##
# Quickly edit dotfiles
alias ba="vim ~/.bash_aliases"
alias bp="vim ~/.bash_profile"
alias br="vim ~/.bashrc"
alias ec="vim ~/.editorconfig"
alias tc="vim ~/.tmux.conf"
alias vr="vim ~/.vimrc"

## Navigation ##
# Go back from current directory
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../../"
alias ......="cd ../../../../../../"

# Go to Home folder
alias h="cd $HOME"

## Node ##
# List top-level npm global modules
alias ng="npm -g ls --depth=0"

# List top-level npm local modules
alias nl="npm ls --depth=0"

# List outdated npm global modules
alias ngo="npm-check-updates -g"

# List outdated npm local modules
alias nlo="npm-check-updates"

# Update outdated npm global modules (interactive)
alias ngu="npm-check -u"

# Update outdated npm local modules (interactive)
alias nlu="npm-check -u"

# Upgrade all pip packages (source: https://stackoverflow.com/a/3452888)
alias pu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Update and cleanup all Ruby gems
alias ru="gem update; gem cleanup"

# Upgrade vim-plug, update vim plugins, install new vim plugins, and clean up removed plugins
alias vu="vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall"
