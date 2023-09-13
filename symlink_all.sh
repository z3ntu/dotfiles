#!/bin/bash

set -ex

stow aur-out-of-date
stow fish
#stow fonts
#stow i3
stow neovim
stow oh-my-fish
stow ranger
stow share_applications
stow systemd_user
stow tmux
sudo stow -t / firefox/
sudo stow -t / fish-conf.d/
sudo stow -t / grub/
sudo stow -t / networkmanager/
sudo stow -t / screen/
sudo stow -t / scripts/
sudo stow -t / udev/
sudo stow -t / xorg-conf/
