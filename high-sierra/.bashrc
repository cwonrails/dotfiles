#!usr/bin/env bash

# Set operating system variable
PLATFORM=$(uname -s)
export PLATFORM

# Add $PATH entries
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/bin:$PATH"

# Set vim as default editor
export EDITOR=vim
export VISUAL=vim

# Enable vi mode in shell
set -o vi

# GNU coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/share/man:$MANPATH"

# GNU findutils
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"

# GNU getopt
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export MANPATH="/usr/local/opt/gnu-getopt/share/man:$MANPATH"

# GNU LLVM
export PATH="/usr/local/opt/llvm/bin:$PATH"

# GNU make
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/make/libexec/gnuman:$MANPATH"

# GNU ncurses
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export MANPATH="/usr/local/opt/ncurses/share/man:$MANPATH"

# GNU sed
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/gnu-sed/share/man:$MANPATH"

# GNU tar
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/gnu-tar/share/man:$MANPATH"

# GNU zip
export PATH="/usr/local/opt/zip/bin:$PATH"
export MANPATH="/usr/local/opt/zip/share/man:$MANPATH"

# Homebrew curl
export PATH="/usr/local/opt/curl/bin:$PATH"
export MANPATH="/usr/local/opt/curl/share/man:$MANPATH"

# Homebrew Python
export PATH="/usr/local/opt/python@2/bin:$PATH"

# Source additional dotfiles
for file in ~/.{aliases.local,bash_aliases,bash_prompt,exports,extras,inputrc,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && . "$file"
done
unset file

# enable mmake
alias make='mmake'

# enable z
. "$HOME/z/z.sh"

# Ignore shellcheck "Cannot follow non-constant source" errors
export SHELLCHECK_OPTS="-e SC1090,SC1091"

# brew command-not-found
eval "$(brew command-not-found-init)"

# Enable Homebrew-installed bash completion
[ -f /etc/bash_completion ] && . /etc/bash_completion

for file in ~/.bash_completion.d/*; do
  . "$file"
done

for file in /usr/local/etc/bash_completion.d/*; do
  . "$file"
done

# Enable hub and alias it to git
eval "$(hub alias -s)"

# Enable thefuck if installed
eval "$(thefuck --alias)"

# Go #
export PATH=/usr/local/opt/go/libexec/bin:$PATH
export GOPATH="$HOME/go"
export GOOS="darwin"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

# Cargo
export PATH="$HOME/.cargo/bin":$PATH

# Mono
export MONO_GAC_PREFIX="/usr/local"

# s bash completion
if [ -f "$GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash" ]; then
  . "$GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash"
fi

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file rather than overwriting it
shopt -s histappend

# Correct spelling errors in arguments supplied to cd
shopt -s cdspell

# Autocorrect on directory names to match a glob.
shopt -s dirspell 2>/dev/null

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2>/dev/null

# More intelligent Up/Down behavior
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Enable Travis CI (auto-inserted by Travis gem)
[ -f ~/.travis/travis.sh ] && . ~/.travis/travis.sh

## Colors ##
# Use coreutils `ls` if possible
hash gls >/dev/null 2>&1 || alias gls="ls"

# Always use color, even when piping
if gls --color >/dev/null 2>&1; then
  export colorflag="--color"
else
  export colorflag="-G"
fi

# Force CLI colors
export CLICOLOR_FORCE=1

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ls='gls -AFh ${colorflag} --group-directories-first'

# List all files colorized in long format
alias l='ls -lF ${colorflag}'

# List all files colorized in long format, including dotfiles
alias la='ls -laF ${colorflag}'

# List only hidden files
alias lh='ls -d .* ${colorflag}'

# List only directories
alias lsd='ls -l | grep "^d"'

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh

# Enable fzf installed via git
[ -f ~/.fzf.bash ] && . ~/.fzf.bash

## Automatically start gpg-agent daemon
export PATH="/usr/local/opt/gpg-agent/bin:$PATH"

if test -f ~/.gnupg/.gpg-agent-info -a -n "$(pgrep gpg-agent)"; then
  source ~/.gnupg/.gpg-agent-info
  export GPG_AGENT_INFO
  GPG_TTY=$(tty)
  export GPG_TTY
else
  eval "$(gpg-agent --daemon)"
fi

# go-search
alias gos='go-search'

# Docker.app completion
. /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
. /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
. /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion

# built-in Go completion
complete -C /Users/christopherwatson/go/bin/gocomplete go

# t completion
. "$HOME/t/etc/t-completion.sh"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# yarn completion and global path
. "$HOME/.yarn-completion"
# export PATH="$HOME/.yarn/bin:$PATH"

# Terraform completion
complete -C /usr/local/Cellar/terraform/0.11.7/bin/terraform terraform

# enable direnv
eval "$(direnv hook bash)"

# enable virtualenvwrapper and set virtualenv directory
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python@2/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
# shellcheck disable=SC1072,SC1094
. /usr/local/bin/virtualenvwrapper.sh

