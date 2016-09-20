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
if [ -f "$HOME/.composer/vendor/bin" ]; then
  export PATH="$HOME/bin":$PATH
fi

# GNU coreutils
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/share/man:$MANPATH

# GNU findutils
export PATH=/usr/local/opt/findutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/findutils/libexec/gnuman:$MANPATH

# GNU sed
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/gnu-sed/share/man:$MANPATH

# GNU tar
export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/gnu-tar/share/man:$MANPATH

# brew command-not-found
if brew command command-not-found-init > /dev/null; then
  eval "$(brew command-not-found-init)";
fi

# ruby
if [ -f /usr/local/opt/ruby/bin/ruby ]; then
  export HOMEBREW_RUBY_PATH="/usr/local/opt/ruby/bin/ruby"
fi

# php70
if [ -f /usr/local/opt/php70/bin/php ]; then
  export PATH=/usr/local/opt/php70/bin/php:$PATH
fi

# tmux - temporary fix for startup error on Sierra
if which tmux > /dev/null; then
  export EVENT_NOKQUEUE=1
fi

# z
if [ -f "$(brew --prefix)/etc/profile.d/z.sh" ]; then
  . "$(brew --prefix)/etc/profile.d/z.sh"
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

if [ -f "$(brew --prefix)"/share/bash-completion/bash_completion ]; then
  . "$(brew --prefix)"/share/bash-completion/bash_completion
fi

if [ -f "$(brew --prefix)"/etc/bash_completion.d ]; then
  . "$(brew --prefix)"/etc/bash_completion.d
fi

# Enable grc (generic colorizer)
# [ -f /usr/local/etc/grc.bashrc ] && . /usr/local/etc/grc.bashrc

# Enable hub and alias it to git
if which hub > /dev/null; then
  eval "$(hub alias -s)"
fi

# Enable Grunt completion
if which grunt > /dev/null; then
  eval "$(grunt --completion=bash)"
else
if which npm > /dev/null; then
  npm install -g grunt-cli
fi
fi

# Enable Gulp completion
if which gulp > /dev/null; then
eval "$(gulp --completion=bash)"
else
if which npm > /dev/null; then
  npm install -g gulp-cli
fi
fi

# Enable thefuck if installed
if which thefuck > /dev/null; then
  eval "$(thefuck --alias)"
fi

# Enable t completion (Twitter CLI client)
# if which t > /dev/null; then
# . "$HOME/t/etc/t-completion.sh"
# fi

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

# Yeoman bash completion
###-begin-yo-completion-###
if type complete &>/dev/null; then
  _yo_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           yo-complete completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _yo_completion yo
fi
###-end-yo-completion-###

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

# Enable global .agignore
alias ag='ag --path-to-agignore ~/.agignore'

# Enable fzf installed via git
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export HOMEBREW_NO_ANALYTICS=1
