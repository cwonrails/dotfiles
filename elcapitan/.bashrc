#!usr/bin/env bash

export PLATFORM=$(uname -s)

# Additional $PATH entries
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/bin:$PATH

# Use GNU versions of core Unix tools
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/share/man:$MANPATH
## note: disabled as findutils can make things messy on OSX ###
# export PATH=/usr/local/opt/findutils/bin:$PATH
# export PATH=/usr/local/Cellar/findutils/4.4.2/bin:$PATH
# export MANPATH=/usr/local/opt/findutils/share/man:$MANPATH
export PATH=/usr/local/opt/grep/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/grep/share/man:$MANPATH
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/gnu-sed/share/man:$MANPATH
export PATH=/usr/local/opt/gnu-which/bin/which:$PATH
export MANPATH=/usr/local/opt/gnu-which/share/man:$MANPATH
export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/gnu-tar/share/man:$MANPATH

# Enable iTerm2 shell integration
. $HOME/.iterm2_shell_integration.`basename $SHELL`


# Enable rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
. $HOME/.rbenv/completions/rbenv.bash
rbenv global 2.3.0

# export PATH=/usr/local/opt/ruby/bin:$PATH
# . /usr/local/opt/chruby/share/chruby/chruby.sh
# chruby ruby 2.3

# Make vim default editor
export VISUAL=vim
export EDITOR=vim

# Enable vi mode in shell
set -o vi

# Use English UTF-8 as default
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

## Completions ##

# Enable bash aliases if present
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Load extra dotfiles if present
for file in ~/.{bash_prompt,extras,inputrc}; do
  [ -r "$file" ] && [ -f "$file" ] && . "$file";
done;
unset file;

# Enable Homebrew-installed bash completion
if [ -f "$(brew --prefix)"/etc/bash_completion ]; then
  . "$(brew --prefix)"/etc/bash_completion
fi

# Enable additional Homebrew-installed bash completion
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
  . "$(brew --prefix)/share/bash-completion/bash_completion";
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Enable aws-cli bash completion
complete -C aws_completer aws

# Alias hub to git (additional git aliases)
eval "$(hub alias -s)"

# Enable t completion (Twitter CLI client)
. ~/t/etc/t-completion.sh

## Language version managers, environments and alternate installs ##

# Go #
# Env configuation
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=/usr/local/opt/go/libexec/bin:$PATH

# Node #
# Enable nvm
export NVM_DIR=~/.nvm
. $HOME/.nvm/nvm.sh

# Enable gulp completion
eval "$(gulp --completion=bash)"

# PHP #
# Use Homebrew PHP
export PATH=/usr/local/opt/php56/bin:$PATH

## Additional CLI executables ##
# Enable thefuck
alias fuck='$(thefuck $(fc -ln -1))'

# Enable z (intelligent directory autojumping)
# . "$(brew --prefix)/etc/profile.d/z.sh"

# Enable fasd (more advanced version of z)
eval "$(fasd --init auto)"

### Bash modifications ###

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

## ls colors and aliases ##
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# List all - Long list of all files in colorized format
alias la='ls -laF --color'

# List only hidden files
alias lh="ls -d .*"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls='command ls --color'

# Always enable colored grep output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Use Git’s colored diff when available
hash git &>/dev/null;
if [ $? -eq 0 ]; then
	function diff() {
		git diff --no-index --color-words "$@";
	}
fi;

# Use the text that has already been typed as the prefix for searching through
# commands (i.e. more intelligent Up/Down behavior)
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Git-Friendly configuration
export GIT_FRIENDLY_NOBUNDLE
export GIT_FRIENDLY_NO_NPM
export GIT_FRIENDLY_NO_BOWER

# Added by Travis-CI gem
[ -f $HOME/.travis/travis.sh ] && . $HOME/.travis/travis.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
