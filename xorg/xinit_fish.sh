#!/usr/bin/fish

set -l hdmi1 (check_display_connected HDMI-1)
set -l hdmi2 (check_display_connected HDMI-2)

if begin [ $hdmi1 = "1" ]; and [ $hdmi2 = "1" ]; end
  xrandr --output HDMI-1 --auto --primary
  xrandr --output HDMI-2 --auto --right-of HDMI-1
  xrandr --output eDP-1 --off
else
  xrandr --output eDP-1 --primary
end

