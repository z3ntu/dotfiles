#!/bin/bash

set -ex

stow fish
#stow fonts
stow neovim
stow oh-my-fish
stow ranger
stow share_applications
stow systemd_user
stow tmux
sudo stow -t / firefox/
sudo stow -t / fish-conf.d/
sudo stow -t / scripts/
