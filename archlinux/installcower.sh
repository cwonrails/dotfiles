#!/usr/bin/env bash

RUN \
cd /root/src &&\
    wget -O cower.tar.gz https://aur.archlinux.org/packages/co/cower/cower.tar.gz &&\
    tar xzf cower.tar.gz &&\
    cd cower &&\
    makepkg --noconfirm --asroot -s &&\
    pacman -U --noconfirm cower-*.pkg.tar.xz &&\
    \
    cd /root/src &&\
    wget -O pacaur.tar.gz https://aur.archlinux.org/packages/pa/pacaur/pacaur.tar.gz &&\
    tar xzf pacaur.tar.gz &&\
    cd pacaur &&\
    makepkg --noconfirm --asroot -s &&\
    pacman -U --noconfirm pacaur-*.pkg.tar.xz &&\
    \
    cd /
