#!/bin/bash

stow fish
#stow i3
stow fonts
stow neovim
stow ranger
sudo stow -t / grub/
sudo stow -t / xorg-conf/
sudo stow -t / scripts/
sudo stow -t / sddm/
sudo stow -t / udev/
