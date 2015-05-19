## Core functions ##
# Enable aliases to be sudo’ed
alias sudo='sudo '

# Print human-readable $PATH
alias path='echo $PATH | tr -s ":" "\n"'

# Reload bash
alias r="source ~/.bashrc"

# Open current directory in vim
alias vd="vim `pwd`"

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

# Back up OSX dotfiles to local directory
alias dflb="cd ~/; cp ~/.agignore .bash_aliases .bashrc .bash_profile .bash_prompt .extras .editorconfig .gemrc .gitattributes .gitconfig .gitignore .hgignore .hushlogin .ideavimrc .npmrc .path .profile .tmux.conf .vimrc ~/localdotfilesbackup"

# Back up OSX dotfiles to Dropbox
alias dfdb="cd ~/; cp ~/.agignore .bash_aliases .bashrc .bash_profile .bash_prompt .extras .editorconfig .gemrc .gitattributes .gitconfig .gitignore .hgignore .hushlogin .ideavimrc .npmrc .path .profile .tmux.conf .vimrc ~/Dropbox/dotfiles"

# Back up OSX dotfiles to Github repo
alias dfg="cd ~/github/repos/dotfiles && git pull --force && cd ~/ && cp .agignore .bash_aliases .bashrc .bash_profile .bash_prompt .editorconfig .gemrc .gitattributes .gitignore .hgignore .hushlogin .tmux.conf .vimrc ~/github/repos/dotfiles/yosemite && cd ~/github/repos/dotfiles/yosemite && git status"

## Ghost ##
# Clone Ghost master repo
alias gcgm="git clone git@github.com:TryGhost/Ghost.git"

# Clone Ghost stable repo
alias gcgs="git clone -b stable git@github.com:TryGhost/Ghost.git"

# Test Ghost pull requests
alias gpr='f() { git fetch upstream && git checkout pr/"$1" && npm install && grunt init && npm start; }; f'

## Mac ##
# Open current directory in Finder
alias f="open ."

# Force empty all trash everywhere
alias te="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

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

# Go to Home folder
alias h="cd $HOME"

## Node ##
# change node version with nvm
alias ns="nvm use system"
alias n10="nvm use 0.10"
alias n12="nvm use 0.12"
alias nio="nvm use iojs"

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

## Updates ##
# Daily update (runs operations below and checks for outdated npm global modules)
alias du="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor; go get -u all; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U; gem update; gem cleanup; vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall; npm-check-updates -g"

# Run all Homebrew operations
alias bu="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor"

# Update all Go packages
alias gu="go get -u all"

# Upgrade all pip packages (source: https://stackoverflow.com/a/3452888)
alias pu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Update and cleanup all Ruby gems
alias ru="gem update; gem cleanup"

# Upgrade vim-plug, update vim plugins, install new vim plugins, and clean up removed plugins
alias vu="vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall"
