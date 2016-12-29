#!/usr/bin/env bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p .vim/backup
mkdir -p .vim/spell
mkdir -p .vim/swap
mkdir -p .vim/undo
