#!/usr/bin/env bash

if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash
