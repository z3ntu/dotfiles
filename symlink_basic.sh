#!/bin/bash

set -ex

mkdir -p ~/.config/fish/
mkdir -p ~/.config/nvim/

stow fish
stow neovim
stow oh-my-fish
stow ranger
stow tmux
