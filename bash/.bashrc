#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Set editor
export VISUAL="nano"

# Set terminal
export TERMINAL="roxterm"

export PATH=$PATH:~/bin

