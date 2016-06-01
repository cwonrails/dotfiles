#!usr/bin/env bash

# iTerm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Add $PATH entries
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/bin:$PATH

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

# Source additional dotfiles
for file in ~/.{bash_aliases,bash_prompt,exports,extras,inputrc,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && . "$file"
  if [ -f "$file" ]; then
    . "$file"
  fi
done

# Set vim as default editor
export EDITOR=vim
export VISUAL=vim

# Enable vi mode in shell
set -o vi

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
  source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion;
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
  shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Ignore shellcheck sourcing errors
if which shellcheck > /dev/null; then
  export SHELLCHECK_OPTS="-s bash -e SC1090 -e SC1091 -x"
fi

# Use homebrew-installed php
if [ -f /usr/local/opt/php70/bin/php ]; then
  export PATH=/usr/local/opt/php70/bin/php:$PATH
fi

# Enable z
if [ -f ~/z/z.sh ]; then
  . ~/z/z.sh
fi

# Alias hub to git
if which hub > /dev/null; then
  eval "$(hub alias -s)"
fi

# Enable thefuck
if which thefuck > /dev/null; then
  eval "$(thefuck --alias)"
fi

# Enable t completion (Twitter CLI client)
if which t > /dev/null; then
  . ~/t/etc/t-completion.sh
fi

# Go #
# Env configuation
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

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

## Colors ##
# Use coreutils `ls` if possible
hash gls >/dev/null 2>&1 || alias gls="ls"

# Always use color, even when piping (to awk,grep,etc)
if gls --color > /dev/null 2>&1; then colorflag="--color"; else colorflag="-G"; fi
export CLICOLOR_FORCE=1

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ls="gls -AFh ${colorflag} --group-directories-first"

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dotfiles
alias la="ls -laF ${colorflag}"

# List only hidden files
alias lh="ls -d .* ${colorflag}"

# List only directories
alias lsd='ls -l | grep "^d"'

