#!/bin/bash

set -ex

stow fish
stow fonts
#stow i3
stow neovim
stow ranger
stow tmux
sudo stow -t / grub/
sudo stow -t / networkmanager/
sudo stow -t / scripts/
sudo stow -t / sddm/
sudo stow -t / udev/
sudo stow -t / xorg-conf/
