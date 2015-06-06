# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clear terminal screen (works well in tmux)
alias c='clear'

# Print history
alias h='history'

# Show jobs
alias j='jobs'

# Enable making nested directories by default
alias mkdir='mkdir -p'

# Reload bash
alias r='. ~/.bashrc'

# Quicker vim
alias v='vim'

# Exit shell
alias x='exit'

# Quickly edit dotfiles
alias ba='vim ~/.bash_aliases'
alias bp='vim ~/.bash_profile'
alias br='vim ~/.bashrc'
alias cr='vim ~/.curlrc'
alias ec='vim ~/.editorconfig'
alias gr='vim ~/.gvimrc'
alias ir='vim ~/.inputrc'
alias tc='vim ~/.tmux.conf'
alias vr='vim ~/.vimrc'
alias wr='vim ~/.wgetrc'

# Back up OSX dotfiles to local directory
alias dflb='cd ~/; cp ~/.agignore .aliases .bash_aliases .bashrc .bash_profile .bash_prompt .curlrc .extra .editorconfig .functions .gemrc .gitattributes .gitconfig .gitignore .gvimrc .hushlogin .ideavimrc .npmrc .path .profile .tmux.conf .vimrc .wgetrc ~/localdotfilesbackup'

# Back up OSX dotfiles to Dropbox
alias dfdb='cd ~/; cp ~/.agignore .aliases .bash_aliases .bashrc .bash_profile .bash_prompt .curlrc .extra .editorconfig .functions .gemrc .gitattributes .gitconfig .gitignore .gvimrc .hushlogin .ideavimrc .npmrc .path .profile .tmux.conf .vimrc .wgetrc ~/Dropbox/dotfiles'

# Back up OSX dotfiles to Github repo
alias dfg="cd ~/github/repos/dotfiles && git pull --force && cd ~/ && cp .agignore .aliases .bash_aliases .bashrc .bash_profile .bash_prompt .curlrc .editorconfig .gemrc .gitattributes .gitignore .gvimrc .hushlogin .ideavimrc .npmrc .path .profile .tmux.conf .vimrc .wgetrc ~/github/repos/dotfiles/yosemite && cd ~/github/repos/dotfiles/yosemite && git status"

# Open current directory in Finder
alias f="open ."

# Force delete all trash on Mac
alias te="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

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

# Go to client work directory
alias cw="cd ~/github/repos/clientwork"

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

# Go to IDEA Projects directory
alias ip="cd ~/IdeaProjects"

## nvm ##
alias ns='nvm use system'
alias n10='nvm use 0.10'
alias n12='nvm use 0.12'
alias nio='nvm use iojs'

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

## Writing ##
# Start distraction-free writing in MacVim
alias mw='mvim +Goyo'

# Start distraction-free writing in terminal Vim
alias tw='vim +Goyo'

## Package Managers ##
# Update all (runs below operations and checks for outdated npm global modules)
alias ua="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor; go get -u all; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U; gem update; gem cleanup; vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall; npm-check-updates -g"

# Run all Homebrew operations
alias bu="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor"

# Update all Go packages
alias gu="go get -u all"

# Upgrade all pip packages (source: https://stackoverflow.com/a/3452888)
alias pu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Update and cleanup all Ruby gems
alias ru="gem update; gem cleanup"

# Upgrade vim-plug, update plugins, install new plugins, and remove unused plugins
alias vu="vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean! +qall"
