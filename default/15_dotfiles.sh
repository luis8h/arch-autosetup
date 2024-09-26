#!/bin/bash

sudo pacman -S --noconfirm stow

git clone https://github.com/luis8h/dotfiles.git ~/dotfiles

cd ~/dotfiles
stow -v . --adopt
git restore .
