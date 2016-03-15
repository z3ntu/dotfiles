set -x TERMINAL roxterm
#set -x TERMINAL termite

if status --is-login
        set PATH $PATH ~/bin /usr/local/bin
end

# start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
        exec startx -- -keeptty
    end
end
