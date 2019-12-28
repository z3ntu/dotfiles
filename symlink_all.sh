#!/bin/bash

set -ex

stow fish
#stow fonts
#stow i3
stow neovim
stow oh-my-fish
stow ranger
stow share_applications
stow tmux
sudo stow -t / grub/
sudo stow -t / networkmanager/
sudo stow -t / screen/
sudo stow -t / scripts/
sudo stow -t / sddm/
sudo stow -t / udev/
sudo stow -t / xorg-conf/
