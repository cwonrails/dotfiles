## Core functions ##
# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clear scrollback (works with tmux)
alias c="clear"

# List bash history
alias hist="history"

# List current jobs
alias j="jobs"

# Print human-readable $PATH
alias path='echo $PATH | tr -s ":" "\n"'

# Reload shell
alias r="exec $SHELL -l"

# Exit shell
alias x="exit"

# Quicker Vim
alias v="vim"

## Dotfiles management ##

# Quickly edit dotfiles
alias ba="vim ~/.bash_aliases"
alias bp="vim ~/.bash_profile"
alias ec="vim ~/.editorconfig"
alias br="vim ~/.bashrc"
alias tc="vim ~/.tmux.conf"
alias vr="vim ~/.vimrc"

# Backup OSX dotfiles to local directory
alias dfb="cd ~/; cp ~/.bash_aliases .bashrc .bash_profile .curlrc .extras .editorconfig .hushlogin .profile .tmux.conf .vimrc .wgetrc ~/localdotfilesbackup"

# Update dotfiles GitHub dotfiles repo
alias dfg="cd ~/dotfiles; git pull --force; cd ~/; cp ~/.bash_aliases .bashrc .bash_profile .curlrc .extras .editorconfig .gemrc .gitattributes .hushlogin .profile .tmux.conf .vimrc .wgetrc ~/dotfiles/Mac\ OSX/; cd ~/dotfiles/Mac\ OSX/; git status"

## Ghost ##
# Clone Ghost master repo
alias gcgm="git clone git@github.com:TryGhost/Ghost.git"

# Clone Ghost stable repo
alias gcgs="git clone -b stable git@github.com:TryGhost/Ghost.git"

# Test Ghost pull requests
alias gpr='f() { git fetch upstream && git checkout pr/"$1" && npm install && grunt init && npm start; }; f'

## Imageoptim-CLI ##
# Copy all .jpg, .jpeg and .png images in current directory to webimages "pre" folder
alias ci="cp *.jpg ~/webimages/pre; cp *.png ~/webimages/pre; cp *.jpeg ~/webimages/pre"

# Run all optimization operations on images in "pre" folder and move output to "post"
alias io="imageoptim -j -a -q -d ~/webimages/pre && mv ~/webimages/pre/* ~/webimages/post"

## Mac ##
# Open current directory in Finder
alias f="open ."

# Force empty all trashed files everywhere
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
# nvm node version shortcuts
alias ns="nvm use system"
alias n10="nvm use 0.10"
alias n12="nvm use 0.12"
alias nio="nvm use iojs"

# List top-level npm global modules
alias "ng"="npm -g ls --depth=0"

# List top-level npm local modules
alias "nl"="npm ls --depth=0"

## Updates ##
# Update all packages (combines everything below)
alias ua="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor; gem update; gem cleanup; vim +PluginInstall +qall; vim +PluginClean +qall; vim +PluginUpdate +qall"

# Run all Homebrew operations
alias bu="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor"

# Update and cleanup all Ruby gems
alias gu="gem update; gem cleanup"

# Install, cleanup, and update all Vim plugins
alias vp="vim +PluginInstall +qall; vim +PluginClean +qall; vim +PluginUpdate +qall"
