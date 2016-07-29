export PTHOME=/opt/pt/

# From ArchWiki (Nvidia Optimus)
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 100

# Run this file to run some xrandr commands if both my external monitors are connected
./xinit_fish.sh

# Set background
feh --bg-scale /home/luca/Pictures/Wallpaper/1.jpg

# Start polkit authentication agent (gnome)
#exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1

# Start i3
#exec startkde
exec i3
#exec openbox-session
