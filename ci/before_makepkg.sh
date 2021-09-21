#!/usr/bin/env bash

pacman -Suy git ed glibc --noconfirm
git clone https://aur.archlinux.org/mksh.git
chown -R devel: mksh
usermod -aG dialout devel
su devel sh -c "cd mksh && export MKSH_DISABLE_TTY_WARNING=true && makepkg -sri --noconfirm"
