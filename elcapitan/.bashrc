#!usr/bin/env bash

# Set operating system variable
export PLATFORM
PLATFORM=$(uname -s)

if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# source "`brew --prefix`/etc/grc.bashrc"
. "/usr/local/etc/grc.bashrc"

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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[[ -r $NVM_DIR/bash_completion ]] && . "$NVM_DIR/bash_completion"

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

# Added by Travis-CI gem
[ -f ~/.travis/travis.sh ] && . ~/.travis/travis.sh

# Enable fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[ -f /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.bash ] && . /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.bash
