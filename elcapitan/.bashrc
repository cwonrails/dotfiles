#!usr/bin/env bash

# Set operating system variable
export PLATFORM
PLATFORM=$(uname -s)

if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

if which shellcheck > /dev/null; then
  export SHELLCHECK_OPTS="-s bash -e SC1090 -e SC1091 -x"
fi

for file in ~/.{bash_aliases,bash_prompt,exports,extras,inputrc,functions}; do
  if [ -f "$file" ]; then
    . "$file"
  fi
done

# Additional $PATH entries
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=~/.local/bin:$PATH

# Set vim as default editor
export EDITOR=vim
export VISUAL=vim

# Enable vi mode in shell
set -o vi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Mac-specific settings
if [[ "$PLATFORM" = 'Darwin' ]]; then

  # Enable iTerm2 shell integration
  test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

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

  # Enable homebrew bash completion
  if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
  fi

  # Enable additional homebrew bash completion
  if [ -f "/usr/local/share/bash-completion/bash_completion" ]; then
    . "/usr/local/share/bash-completion/bash_completion";
  fi

  # Use homebrew-installed php
  if [ -f "/usr/local/opt/php70/bin/php" ];then
    export PATH="/usr/local/opt/php70/bin/php:$PATH"
  fi

  # Automatically activate docker
  # if which docker-machine > /dev/null; then
  #   eval "$(docker-machine env default)"
  # fi

  # Enable z for quick file navigation
  . /usr/local/etc/profile.d/z.sh
fi

# Enable hub by aliasing to git
if which hub > /dev/null; then
  eval "$(hub alias -s)"
fi

# Enable thefuck
if which thefuck > /dev/null; then
  eval "$(thefuck --alias)"
fi

# Enable t completion
if [ -f ~/t/etc/t-completion.sh ]; then
  . ~/t/etc/t-completion.sh
fi

# Go #
# Env configuation
if which go > /dev/null; then
  export GOPATH=$HOME/go
  export GOBIN=$GOPATH/bin
  export PATH=$GOBIN:$PATH
fi

## node and npm ##

# Enable n
# export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# Enable nvm
export NVM_DIR="/Users/christopherwatson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# nvm bash completion
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Check the window size after each command ($LINES, $COLUMNS)
shopt -s checkwinsize

# Use the text that has already been typed as the prefix for searching through
# commands (i.e. more intelligent Up/Down behavior)
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

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
# shellcheck disable=SC2139
alias la="ls -laF ${colorflag}"

# List only directories
# shellcheck disable=SC2139
alias ld="ls -lF ${colorflag} | grep --color=never '^d'"

# List only hidden files
# shellcheck disable=SC2139
alias lh="ls -d .* ${colorflag}"

# Always use color output for `ls`
# shellcheck disable=SC2139
alias ls="command ls ${colorflag}"

# Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Added by Travis-CI gem
[ -f ~/.travis/travis.sh ] && . ~/.travis/travis.sh

# Enable fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[ -f /Users/christopherwatson/n/lib/node_modules/yo/node_modules/tabtab/.completions/yo.bash ] && . /Users/christopherwatson/n/lib/node_modules/yo/node_modules/tabtab/.completions/yo.bash
