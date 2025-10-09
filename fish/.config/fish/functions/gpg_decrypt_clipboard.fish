function gpg_decrypt_clipboard --description 'Decrypt text on the clipboard via gpg'
    if test $XDG_SESSION_TYPE = wayland
        wl-paste | gpg --decrypt - $argv
    else
        xsel --clipboard | gpg --decrypt - $argv
    end
end
