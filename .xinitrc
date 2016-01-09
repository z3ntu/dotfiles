# From ArchWiki (Nvidia Optimus)
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
#xrandr --dpi 96

# Set keymap
setxkbmap de

# Set background
feh --bg-scale /home/luca/Pictures/Wallpaper/1.jpg

# Start polkit authentication agent (gnome)
#exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1

# Start i3
exec i3
