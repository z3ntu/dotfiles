if status --is-login
    set data_home $XDG_DATA_HOME
    set -q XDG_DATA_HOME; or set data_home $HOME/.local/share

    set data_dirs $XDG_DATA_DIRS
    set -q XDG_DATA_DIRS; or set data_dirs /usr/local/share:/usr/share

    set -x XDG_DATA_DIRS $data_home/flatpak/exports/share:/var/lib/flatpak/exports/share:$data_dirs
end
