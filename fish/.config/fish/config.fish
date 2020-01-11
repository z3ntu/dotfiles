# fish shell config

set -gx EDITOR nvim
set -gx DIFFPROG "nvim -d"

# virsh should connect to the system session by default
set -gx LIBVIRT_DEFAULT_URI "qemu:///system"

# set the pacaur directory
set -gx AURDEST ~/aur

# set variables for 'asp'
set -gx ASPROOT ~/.asp
set -gx ASPCACHE ~/.cache/asp/cache

# set email and name for debian stuff
set -gx DEBFULLNAME "Luca Weiss"
set -gx DEBEMAIL "luca@z3ntu.xyz"

# setup "thefuck"
if test -x /usr/bin/thefuck
    thefuck --alias | source
end

# convenience function
function gpg_decrypt_clipboard --description 'Decrypt text on the clipboard via gpg'
    xsel --clipboard | gpg --decrypt - $argv
end

if [ (hostname) = "arch-tower" ]
    set -gx CCACHE_DIR /mnt/data1/ccache
end

if test -d ~/bin
    set -gx PATH ~/bin $PATH
end

#function monstercatinstinct
#   /usr/bin/streamlink --player mpv "https://www.youtube.com/watch?v=a_RMxE6bIo8" 480p &
#   disown
#end

# start X at login
#if status --is-login
#    if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
#        exec startx -- -keeptty
#    end
#end
