# fish shell config

set -gx EDITOR nvim
set -gx DIFFPROG "nvim -d"

# virsh should connect to the system session by default
set -gx LIBVIRT_DEFAULT_URI "qemu:///system"

# set email and name for debian stuff
set -gx DEBFULLNAME "Luca Weiss"
set -gx DEBEMAIL "luca@lucaweiss.eu"

# ssh socket
if test -e "$XDG_RUNTIME_DIR/ssh-agent.socket"
    set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
end

# map alt-backspace to delete a word instead of kill-token
# this aligns with older fish versions and other shells
bind alt-backspace backward-kill-word

# set up path
fish_add_path -gm ~/bin

# setup "thefuck"
if test -x /usr/bin/thefuck
    thefuck --alias | source
end
