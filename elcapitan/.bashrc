#!usr/bin/env bash

# Set operating system variable
export PLATFORM
PLATFORM=$(uname -s)

# Use GNU versions of core Unix tools on Mac
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/share/man:$MANPATH
export PATH=/usr/local/opt/findutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/findutils/libexec/gnuman:$MANPATH
export PATH=/usr/local/opt/grep/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/grep/share/man:$MANPATH
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/gnu-sed/share/man:$MANPATH
export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/gnu-tar/share/man:$MANPATH
export PATH=/usr/local/opt/gnu-which/bin/which:$PATH
export MANPATH=/usr/local/opt/gnu-which/share/man:$MANPATH

# Source default bashrc
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Source additional dotfiles
for file in ~/.{,bash_aliases,bash_prompt,exports,extras,inputrc,functions}; do
  if [ -f "$file" ]; then
    . "$file"
  fi
done

# Add $PATH entries
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=~/bin:$PATH
export PATH=~/.local/bin:$PATH

# Set vim as default editor
export EDITOR=vim
export VISUAL=vim

# Enable vi mode in shell
set -o vi

# Enable bash completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi

# Ignore shellcheck sourcing errors
if which shellcheck > /dev/null; then
  export SHELLCHECK_OPTS="-s bash -e SC1090 -e SC1091 -x"
fi

# Enable generic grc (Colorizes logfiles and command output)
if [ -f /usr/local/etc/grc.bashrc ]; then
  . /usr/local/etc/grc.bashrc
fi

# Use homebrew-installed php
if [ -f /usr/local/opt/php70/bin/php ]; then
  export PATH=/usr/local/opt/php70/bin/php:$PATH
fi

# Enable z
if [ -f ~/z/z.sh ]; then
  . ~/z/z.sh
fi

if which hub > /dev/null; then
  eval "$(hub alias -s)"
fi

if which thefuck > /dev/null; then
  eval "$(thefuck --alias)"
fi

if which t > /dev/null; then
  . ~/t/etc/t-completion.sh
fi

# Go #
# Env configuation
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

## node and npm ##

# Enable n
# export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# Enable nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# [[ -r $NVM_DIR/bash_completion ]] && . "$NVM_DIR/bash_completion"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Check the window size after each command ($LINES, $COLUMNS)
shopt -s checkwinsize

# More intelligent Up/Down behavior
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Added by Travis-CI gem
[ -f ~/.travis/travis.sh ] && . ~/.travis/travis.sh

# Enable fzf
[ -f ~/.fzf.bash ] && . ~/.fzf.bash

# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[ -f /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.bash ] && . /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.bash

# Enable iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && . "${HOME}/.iterm2_shell_integration.bash"
