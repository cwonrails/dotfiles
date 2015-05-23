#### Core configuration ####

# Set command prompt options
PS1="\n\u @\h [\d \@]\n\w "

# Enable command prompt coloring
export CLICOLOR=1

# Set vim as default editor
export EDITOR='vim'

# Enable vi mode in shell
set -o vi

# Enable bash aliases if present
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Enable Homebrew-installed bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Enable perlbrew
. ~/perl5/perlbrew/etc/bashrc

# Enable aws-cli bash completion
complete -C aws_completer aws

# Use GNU coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Default to GNU coreutils man pages
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Use GNU versions of grep, sed, awk etc.
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Default to GNU grep, sed, and awk manpages
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

# Use GNU findutils
# export PATH="/usr/local/Cellar/findutils/4.4.2/bin:$PATH"
# export PATH="$(brew --prefix)/Cellar/findutils/4.4.2/bin:$PATH"

# Enable t completion (Twitter CLI client)
. ~/t/etc/t-completion.sh

# Enable z (intelligent directory autojumping)
. `brew --prefix`/etc/profile.d/z.sh

# Enable nvm
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# Golang env variables
export GOPATH=/Users/christopherwatson/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH/bin:$PATH

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Enable thefuck: https://github.com/nvbn/thefuck
alias fuck='$(thefuck $(fc -ln -1))'

# Enable Halcyon
eval "$( HALCYON_NO_SELF_UPDATE=1 "/app/halcyon/halcyon" paths )"

### from Mathias' dotfiles ####

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Fix "GREP_OPTIONS is depreciated" error
alias grep="/usr/local/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# List only hidden files
alias lh="ls -d .*"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
