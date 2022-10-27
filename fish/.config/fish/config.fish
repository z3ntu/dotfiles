# fish shell config

set -gx EDITOR nvim
set -gx DIFFPROG "nvim -d"

# virsh should connect to the system session by default
set -gx LIBVIRT_DEFAULT_URI "qemu:///system"

# set variables for 'asp'
set -gx ASPROOT ~/.asp
set -gx ASPCACHE ~/.cache/asp/cache

# set email and name for debian stuff
set -gx DEBFULLNAME "Luca Weiss"
set -gx DEBEMAIL "luca@z3ntu.xyz"

# ssh socket
set -gx SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket

# set up path
fish_add_path -gm ~/bin

# setup "thefuck"
if test -x /usr/bin/thefuck
    thefuck --alias | source
end

# convenience function
function gpg_decrypt_clipboard --description 'Decrypt text on the clipboard via gpg'
    if test $XDG_SESSION_TYPE = wayland
        wl-paste | gpg --decrypt - $argv
    else
        xsel --clipboard | gpg --decrypt - $argv
    end
end
