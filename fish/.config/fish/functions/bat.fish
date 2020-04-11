function bat --wraps='bat'
    set konsole_theme (qdbus $KONSOLE_DBUS_SERVICE $KONSOLE_DBUS_SESSION profile)
    if test $konsole_theme = 'Light'
        set -x BAT_THEME "Monokai Extended Light"
    end
    command bat $argv
end
