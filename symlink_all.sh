#!/bin/bash

stow fish
#stow i3
ln -s $(pwd)/neovim/.config/nvim/init.vim ~/.config/nvim/init.vim
sudo stow -t / grub/
sudo stow -t / xorg-conf/
sudo stow -t / scripts/
sudo stow -t / udev/
sudo stow -t / fonts/
