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

# ctrl-backspace doesn't seem to work with Konsole
# "fish_key_reader -c" shows it's essentially sending ctrl-h
# https://bugs.kde.org/show_bug.cgi?id=435975
# https://github.com/fish-shell/fish-shell/issues/11538#issuecomment-3356580330
bind ctrl-h backward-kill-word

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

# launch a process in the background, silencing all output
function stfu
    fish -c (string join -- ' ' (string escape -- $argv)) 2>/dev/null >/dev/null &
    disown
end
