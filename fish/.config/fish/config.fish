# custom entries on PATH
set -gx PATH (ruby -e 'print Gem.user_dir')/bin $PATH
set -gx PATH ~/bin $PATH

# virsh should connect to the system session by default
set -gx LIBVIRT_DEFAULT_URI "qemu:///system"

# set the pacaur directory
set -gx AURDEST "/home/luca/aur"

# fix up streamlink with mpv
alias streamlink="streamlink --player mpv"

# convenience function
alias gpg_decrypt_clipboard="xsel --clipboard | gpg --decrypt -"

# setup "thefuck"
thefuck --alias | source

# start X at login
#if status --is-login
#    if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
#        exec startx -- -keeptty
#    end
#end
