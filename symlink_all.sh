#!/bin/bash

stow bash
stow gtk-3.0
stow i3
stow xorg
sudo stow -t / xorg-conf/
sudo stow -t / scripts/
