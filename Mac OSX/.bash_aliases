## Core functions ##
# Enable aliases to be sudo’ed
alias sudo='sudo '

# Clear scrollback (works with tmux)
alias c="clear"

# Enable mkdir to create nested directories
alias mkdir="mkdir -p"

# Print human-readable $PATH (source: https://github.com/thoughtbot/dotfiles/blob/master/aliases)
alias path='echo $PATH | tr -s ":" "\n"'

# Reload bash
alias r="source ~/.bashrc"

# Reload shell (agnostic)
alias reload="exec $SHELL -l"

# Exit shell
alias x="exit"

## Dotfiles management ##
# Quickly edit dotfiles
alias ba="vim ~/.bash_aliases"
alias bp="vim ~/.bash_profile"
alias ec="vim ~/.editorconfig"
alias br="vim ~/.bashrc"
alias tc="vim ~/.tmux.conf"
alias vr="vim ~/.vimrc"

# Backup OSX dotfiles to local directory
alias dfb="cd ~/; cp ~/.bash_aliases .bashrc .bash_profile .curlrc .extras .editorconfig .gitattributes .gvimrc .hushlogin .inputrc .profile .tmux.conf .vimrc .wgetrc ~/dotfilesbackup"

# Update dotfiles GitHub dotfiles repo
alias dfg="cd ~/github/repos/dotfiles; git pull --force; cd ~/; cp ~/.bash_aliases .bashrc .bash_profile .editorconfig .gemrc .gitattributes .gvimrc .hushlogin .inputrc .profile .tmux.conf .vimrc ~/github/repos/dotfiles/Mac\ OSX/; cd ~/github/repos/dotfiles/Mac\ OSX/; git status"

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

# Force empty all trashed files everywhere
alias te="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

## Navigation ##
# Go back from current directory
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../../"
alias ......="cd ../../../../../../"

# Go back to previous directory
alias b="cd - "

# Go to bash scripts folder
alias bs="cd ~/bashscripts"

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
alias h="cd $HOME"

# Update fzf (https://github.com/junegunn/fzf)
alias fzfu="cd ~/.fzf && git pull && ./install"

## Node ##
# nvm node version shortcuts
alias n12="nvm use 0.12"

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
# Daily update (combines all below operations)
alias ua="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor; go get -u all; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U; gem update; gem cleanup; vim +PluginInstall +qall; vim +PluginClean +qall; vim +PluginUpdate +qall"

# Update, upgrade, and clean up all Homebrew installs + prune symbolic links, and check for errors
alias bu="brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor"

# Update all Go packages
alias gu="go get -u all"

# Upgrade all pip packages (source: https://stackoverflow.com/a/3452888)
alias pu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Update and cleanup all Ruby gems
alias ru="gem update; gem cleanup"

# Install, cleanup, and update all Vim plugins
alias vp="vim +PluginInstall +qall; vim +PluginClean +qall; vim +PluginUpdate +qall"
