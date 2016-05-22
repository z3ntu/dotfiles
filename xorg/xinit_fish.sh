#!/usr/bin/fish

set -l hdmi1 (check_display_connected HDMI-1)
set -l hdmi2 (check_display_connected HDMI-2)

if begin [ $hdmi1 = "1" ]; and [ $hdmi2 = "1" ]; end
  bash ~/home.sh
else
  xrandr --output eDP-1 --primary
end

