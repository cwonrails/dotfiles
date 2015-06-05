#!/usr/bin/env bash

pacman -Rsc $(comm -23 <(pacman -Qeq|sort) <((for i in $(pacman -Qqg base base-devel); do pactree -ul $i; done)|sort -u|cut -d ' ' -f 1))

pacman -Rsc $(comm -23 <(pacman -Qq|sort) <((for i in $(pacman -Qqg base base-devel); do pactree -ul $i; done)|sort -u|cut -d ' ' -f 1))
