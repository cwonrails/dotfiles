#!usr/bin/env bash

# Set operating system variable
export PLATFORM=$(uname -s)
[ -f /etc/bashrc ] && . /etc/bashrc

# Source additional dotfiles if present
. ~/.bash_aliases
. ~/.bash_prompt
. ~/.extras
. ~/.inputrc
. ~/.functions

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

# Set default language as English UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


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
  if [ -f "$(brew --prefix)"/etc/bash_completion ]; then
    . "$(brew --prefix)"/etc/bash_completion
  fi

  # Enable additional homebrew bash completion
  if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    . "$(brew --prefix)/share/bash-completion/bash_completion";
  fi

  # Enable colorized logfiles and command output with grc
  # . `brew --prefix`/etc/grc.bashrc

  # Enable lunchy
  LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
  if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
    . $LUNCHY_DIR/lunchy-completion.bash
  fi

  # Use homebrew-installed php
  export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
fi

# Enable hub by aliasing to git
eval "$(hub alias -s)"

# Enable thefuck
eval "$(thefuck --alias)"

# t bash completion
. $HOME/t/etc/t-completion.sh

# Go #
# Env configuation
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

## node and npm ##
# Enable nvm
. ~/.nvm/nvm.sh
# Add nvm bash completion
. ~/.nvm/bash_completion

# Enable jump (more focused version of fasd)
eval "$(jump shell bash)"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Check the window size after each command ($LINES, $COLUMNS)
shopt -s checkwinsize

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

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

# Added by Travis-CI gem
[ -f $HOME/.travis/travis.sh ] && . $HOME/.travis/travis.sh

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
