set -x TERMINAL roxterm
#set -x TERMINAL termite

set -gx PATH (ruby -e 'print Gem.user_dir')/bin $PATH

alias livestreamer="livestreamer --player mpv"
alias gpg_decrypt_clipboard="xsel --clipboard | gpg --decrypt -"

eval (thefuck --alias | tr '\n' ';')

if status --is-login
        set PATH $PATH ~/bin /usr/local/bin
end

# start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
        exec startx -- -keeptty
    end
end

