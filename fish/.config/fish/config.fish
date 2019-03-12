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

# fix up streamlink with mpv
alias streamlink="streamlink --player mpv"

# convenience function
alias gpg_decrypt_clipboard="xsel --clipboard | gpg --decrypt -"

# alias pmbootstrap.py
alias pmb /mnt/hdd/postmarketOS/pmbootstrap/pmbootstrap.py
# alias pypcap
alias pypcap /mnt/hdd/razer/pypcap/pypcap.py

# setup "thefuck"
if test -x /usr/bin/thefuck
    thefuck --alias | source
end

# set email and name for debian stuff
set -gx DEBFULLNAME "Luca Weiss"
set -gx DEBEMAIL "luca@z3ntu.xyz"

#function monstercatinstinct
#   /usr/bin/streamlink --player mpv "https://www.youtube.com/watch?v=a_RMxE6bIo8" 480p &
#   disown
#end

function pb --description 'Paste to ptpb.pw'
    curl -F c=@- https://ptpb.pw/
end

function pb_delete --description 'Delete a paste from ptpb.pw' --argument-names uuid
    curl -X DELETE https://ptpb.pw/$uuid
end

# start X at login
#if status --is-login
#    if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
#        exec startx -- -keeptty
#    end
#end
