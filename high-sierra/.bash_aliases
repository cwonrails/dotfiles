#!/usr/bin/env bash

# Clean up homebrew cached downloads
alias brewclean='brew cleanup -s --force && brew cask cleanup'

# List installed formulas that depend on the given formula
alias brewdep='brew uses --installed'

# Clear screen (works with tmux)
alias c='clear'

# Copy default package.json to current directory
alias dfpj='cp ~/default.package.json/package.json `pwd`'

# Recursively delete `.DS_Store` files
alias dskill='find . -type f -name "*.DS_Store" -ls -delete'

# Print history
alias h='history'

# Fix incorrect typing of 'install'
alias insatll='install'

# Get ip address
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'

# Enable making nested directories by default
alias mkdir='mkdir -p'

# Create new project
alias np='cp ~/new-project/.* `pwd`; cp ~/new-project/* `pwd`'

# Open current directory in OSX Finder
alias o='open .'

# Reload shell
alias r='exec $SHELL -l'

# Reload bash
alias rb='. ~/.bashrc'

# Correct accidental 'sl'
alias sl='ls'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Force delete trash on local + mounted file systems; trash Apple System Logs
alias te='sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl'

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
alias dfbu='gpl && dflb && dfdb && dfgb'

# Back up OSX dotfiles to local directory
alias dflb='cp ~/global-package-lists/*.txt ~/localdotfilesbackup; cp ~/.{agignore,bash_aliases,bash_profile,bash_prompt,bashrc,dircolors,editorconfig,eslintignore,exports,functions,gemrc,gitconfig,gvimrc,hushlogin,inputrc,tmux.conf,vimrc,vintrc.yaml} ~/localdotfilesbackup'

# Back up OSX dotfiles to Dropbox
alias dfdb='cp ~/global-package-lists/*.txt ~/Dropbox/dotfiles; cp ~/.{agignore,bash_aliases,bash_profile,bash_prompt,bashrc,dircolors,editorconfig,eslintignore,exports,functions,gemrc,gitconfig,gvimrc,hushlogin,inputrc,tmux.conf,vimrc,vintrc.yaml} ~/Dropbox/dotfiles'

# Back up dotfiles to public github repo
alias dfgb='cp ~/global-package-lists/*.txt ~/github/repos/public/dotfiles/high-sierra; cp ~/.{agignore,bash_aliases,bash_profile,bash_prompt,bashrc,dircolors,editorconfig,eslintignore,exports,functions,gemrc,gitconfig,gvimrc,hushlogin,inputrc,tmux.conf,vimrc,vintrc.yaml} ~/github/repos/public/dotfiles/high-sierra; cd ~/github/repos/public/dotfiles/high-sierra; git diff'

# Create text files with lists of globally installed package binaries
alias gpl='cd ~; yarn global list > ~/global-package-lists/yarn-global.txt; cd ~/global-package-lists; brew leaves > brew-leaves.txt; brew cask list > brew-cask.txt; gem list > gems.txt; ngl; pip2 list > pip2.txt; pip3 list > pip3.txt'

# get global list of npm installs and output to text file as reformatted simple list
# shellcheck disable=SC2026
alias ngl='npm -g ls --depth=0 | cut -c 11- | sed -e '1d' > npm-global.txt'

# Fast updating of git repositories
alias gup='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;'

# TJ Hollowaychuck's git aliases (customized)
alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gcb='git-create-branch'
alias gcl='git clone'
alias gclr='git clone --recursive'
alias glcr='git clone --recursive' # fix command entry errors
alias gco='git checkout'
alias gd='git diff'
alias gdb='git-delete-branch'
alias gdno='git diff --name-only'
alias gdnoum='git diff --name-only upstream/master'
alias gp='git push'
alias gpf='git push --force'
alias gs='git status'
alias gac='git commit -a -m'
alias gba='git branch -a'
alias gbd='git branch -D'
alias gcob='git checkout -b'
alias gcp='git cherry-pick'
alias gdum='git diff upstream/master'
alias gdumno='git diff upstream/master --name-only'
alias gl='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --'
alias gm='git merge --ff'
alias gpt='git push --tags'
alias gpo='git pull origin'
alias gprom='git pull --rebase origin master'
alias gr='git remote'
alias grau='git remote add upstream'
alias grh='git reset --hard'
alias gpu='git pull upstream'
alias gpum='git pull --rebase upstream master'
alias gws='git grep -I --name-only -z -e '' | xargs -0 sed -i -e "s/[ \t]\+\(\r\?\)$/\1/"'

## Navigation ##
# Go back from current directory
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

# Go back to previous directory
alias b='cd - '

# Go to Dropbox directory
alias db='cd ~/Dropbox'

# Go to downloads directory
alias dl='cd ~/Downloads'

# Go to desktop directory
alias dt='cd ~/Desktop'

# Go to GitHub directory
alias gh='cd ~/github'

# Go to GitHub clones directory
alias ghc='cd ~/github/clones'

# Go to GitHub repos directory
alias ghd='cd ~/github/repos/public/dotfiles'

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
alias ns='nvm use system'
alias n8='nvm use v8'
alias n9='nvm use v9'

## yarn ##
# List yarn global installs
alias yg='yarn global list'

# Install global yarn package
alias yga='yarn global add'

# Update global yarn packages
alias ygu='yarn global upgrade --latest'

## Package manager updates ##
alias ua='au; uu; gu; ggu; tu; diu; gitup; vu; bu; pu; uy; ycu; ygu'

# Upgrade Apex
alias au='apex upgrade'

# Homebrew: Run daily operations
alias bu='brew update; brew upgrade; brew prune; brewclean; brew doctor'

# Docker update all images (preserves tags)
# shellcheck disable=SC2142
alias diu="docker images | awk 'BEGIN {OFS=\":\";}NR<2 {next}{print \$1, \$2}' | xargs -L1 docker pull"

# Update go packages
alias ggu="go get -u \
             github.com/alecthomas/gometalinter \
             github.com/apex/static/cmd/static-docs \
             github.com/asciimoo/wuzz \
             github.com/ddo/fast \
             github.com/dwarvesf/glod \
             github.com/ericchiang/pup \
             github.com/gchaincl/httplab/cmd/httplab \
             github.com/golang/dep/cmd/dep \
             github.com/google/git-appraise/git-appraise \
             github.com/GoogleChrome/simplehttp2server \
             github.com/haya14busa/go-vimlparser/cmd/vimlparser \
             github.com/jackc/sqlfmt/cmd/sqlfmt \
             github.com/kardianos/govendor \
             github.com/posener/complete/gocomplete \
             github.com/rapidloop/rtop \
             github.com/russross/blackfriday-tool \
             github.com/sourcegraph/go-langserver \
             github.com/tj/go-search \
             github.com/tj/mmake/cmd/mmake \
             github.com/tj/node-prune/cmd/node-prune \
             github.com/zquestz/s \
             github.com/whyrusleeping/gx \
             honnef.co/go/tools/cmd/gosimple \
             honnef.co/go/tools/cmd/staticcheck"

# Ruby: Update and clean up all gems
alias gu='gem update; gem cleanup'

# Python: Upgrade all pip2 and pip3 packages
alias pu="p2u; p3u"

# shellcheck disable=SC1117
# Python 2: Upgrade all pip2 packages
alias p2u="pip2 freeze --local |sed -rn 's/^([^=# \t\\][^ \t=]*)=.*/echo; echo Processing \1 ...; pip2 install -U \1/p' |sh"

# shellcheck disable=SC1117
# Python 3: Upgrade all pip3 packages
alias p3u="pip3 freeze --local |sed -rn 's/^([^=# \t\\][^ \t=]*)=.*/echo; echo Processing \1 ...; pip3 install -U \1/p' |sh"

# Tmux: Update, install, and remove unused plugins
alias tu='~/.tmux/plugins/tpm/bin/update_plugins all && ~/.tmux/plugins/tpm/bin/install_plugins && ~/.tmux/plugins/tpm/bin/clean_plugins'

# Upgrade up
alias uu='curl -sfL https://raw.githubusercontent.com/apex/up/master/install.sh | sh'

# Upgrade Yarn Nightly
alias uy='rm -rf ~/.yarn && curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --nightly'

# Vim: Upgrade vim-plug, update, install, and remove unused plugins
alias vu='vim +PlugUpgrade +PlugUpdate +PlugInstall +PlugClean +qall'

# Upgrade yarn-completion
alias ycu='curl -o ~/.yarn-completion https://raw.githubusercontent.com/dsifford/yarn-completion/master/yarn-completion.bash'

# Maintain ligatures when sshing into server
alias ssh='TERM=xterm-256color ssh'

# Opposite of workon pip package for python virtualenvs
alias workoff='deactivate'
