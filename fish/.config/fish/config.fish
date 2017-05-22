set -x TERMINAL roxterm
#set -x TERMINAL termite

set -gx PATH (ruby -e 'print Gem.user_dir')/bin $PATH
set -gx PATH ~/bin $PATH

# virsh should connect to the system session by default
set -gx LIBVIRT_DEFAULT_URI "qemu:///system"

alias livestreamer="livestreamer --player mpv"
alias gpg_decrypt_clipboard="xsel --clipboard | gpg --decrypt -"

set -gx LESS "-RSMsi"

eval (thefuck --alias | tr '\n' ';')

# start X at login
#if status --is-login
#    if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
#        exec startx -- -keeptty
#    end
#end

set -gx AURDEST "/home/luca/aur"
