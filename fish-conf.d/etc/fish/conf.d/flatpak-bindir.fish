if test -d $HOME
    and test -d $HOME/.local/share/flatpak/exports/bin
    set PATH $PATH $HOME/.local/share/flatpak/exports/bin
end
if test -d /var/lib/flatpak/exports/bin
    set PATH $PATH /var/lib/flatpak/exports/bin
end
