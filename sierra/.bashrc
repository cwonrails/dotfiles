#!usr/bin/env bash

# Set operating system variable
PLATFORM=$(uname -s)
export PLATFORM

# Add $PATH entries
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
if [ -f "$HOME/bin" ]; then
  export PATH="$HOME/bin":$PATH
fi

## Mac-specific: activate homebrew-installed executables, config files etc. ##

if PLATFORM="darwin"; then
  # GNU core utilities
  if [ -f /usr/local/opt/coreutils ]; then
    export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
    export MANPATH=/usr/local/opt/coreutils/share/man:$MANPATH
  fi

  if [ -f /usr/local/opt/findutils ]; then
    export PATH=/usr/local/opt/findutils/libexec/gnubin:$PATH
    export MANPATH=/usr/local/opt/findutils/nlibexec/gnuman:$MANPATH
  fi

  if [ -f /usr/local/opt/gnu-sed ]; then
    export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
    export MANPATH=/usr/local/opt/gnu-sed/share/man:$MANPATH
  fi

  if [ -f /usr/local/opt/gnu-tar ]; then
    export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH
    export MANPATH=/usr/local/opt/gnu-tar/share/man:$MANPATH
  fi

  # iTerm2 shell integration
  if [ -f "${HOME}/.iterm2_shell_integration" ]; then
    test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
  fi

  # bash-prexec
  [[ -f $(brew --prefix)/etc/profile.d/bash-preexec.sh ]] && . "$(brew --prefix)/etc/profile.d/bash-preexec.sh"

  # brew command-not-found
  if brew command command-not-found-init > /dev/null; then eval "$(brew command-not-found-init)"; fi

  # fzf
  [ -f ~/.fzf.bash ] && source ~/.fzf.bash

  # Neovim: termporary fix for startup TERMINFO error
  if which nvim > /dev/null; then
    export TERMINFO="$HOME/.terminfo"
  fi

  # ruby
  if [ -f /usr/local/opt/ruby/bin/ruby ]; then
    export HOMEBREW_RUBY_PATH="/usr/local/opt/ruby/bin/ruby"
  fi

  # php70
  if [ -f /usr/local/opt/php70/bin/php ]; then
    export PATH=/usr/local/opt/php70/bin/php:$PATH
  fi

  # td
  if [ -f "$HOME/Dropbox/todo.json" ]; then
    export TODO_DB_PATH=$HOME/Dropbox/todo.json
  fi

  # tmux - temporary fix for startup error on Sierra
  if which tmux > /dev/null; then
    export EVENT_NOKQUEUE=1
  fi

  # z
  if [ -f "$(brew --prefix)/etc/profile.d/z.sh" ]; then
    . "$(brew --prefix)/etc/profile.d/z.sh"
  fi
fi

# Source additional dotfiles
for file in ~/.{bash_aliases,bash_prompt,exports,extras,inputrc,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && . "$file";
done;
unset file

# Ignore shellcheck "Canot follow non-constant source" errors
if which shellcheck > /dev/null; then
  export SHELLCHECK_OPTS="-e SC1090,SC1091"
fi

# Set vim as default editor
export EDITOR=vim
export VISUAL=vim

# Enable vi mode in shell
set -o vi

# Enable Homebrew-installed bash completion
if [ -f "$(brew --prefix)"/etc/bash_completion ]; then
    . "$(brew --prefix)"/etc/bash_completion
fi

# Source additional bash completion entries
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
  . "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
  . /etc/bash_completion;
fi

# Enable grc (generic colorizer)
[ -f /usr/local/etc/grc.bashrc ] && . /usr/local/etc/grc.bashrc

# Enable hub, alias it hub to git
if which hub > /dev/null; then
  eval "$(hub alias -s)"
fi

# Enable Grunt completion
if which grunt > /dev/null
then
  eval "$(grunt --completion=bash)"
else
  if which npm > /dev/null;
    then npm install -g grunt-cli
  fi
fi

# Enable Gulp completion
if which gulp > /dev/null
then
  eval "$(gulp --completion=bash)"
else
  if which npm > /dev/null;
    then npm install -g gulp-cli
  fi
fi

# Enable thefuck if installed
if which thefuck > /dev/null; then
  eval "$(thefuck --alias)"
fi

# Enable t completion (Twitter CLI client)
if which t > /dev/null; then
  . "$HOME/t/etc/t-completion.sh"
fi

# Go #
# Env configuation
if which go > /dev/null; then
  export PATH=/usr/local/opt/go/libexec/bin:$PATH
  export GOPATH="$HOME/go"
  export GOOS="darwin"
  export GOBIN="$GOPATH/bin"
  export PATH="$GOBIN:$PATH"
  # export PATH=/usr/local/go/bin:$PATH
fi

# s bash completion
if [ -f "$GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash" ]; then
    . "$GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash"
fi

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# More intelligent Up/Down behavior
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Enable Travis CI (auto-inserted by Travis gem)
[ -f ~/.travis/travis.sh ] && . ~/.travis/travis.sh

# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
if which yo > /dev/null; then
  [ -f /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.bash ] && . /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.bash;
else
  if npm > /dev/null;
    then npm install -g yo
  fi
fi

## Colors ##
# Use coreutils `ls` if possible
hash gls >/dev/null 2>&1 || alias gls="ls"

# Always use color, even when piping
if gls --color > /dev/null 2>&1; then
  export colorflag="--color";
else
  export colorflag="-G";
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
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

