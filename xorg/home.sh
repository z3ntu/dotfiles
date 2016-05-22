#!/bin/bash

xrandr --output HDMI-2 --auto --left-of eDP-1
xrandr --output HDMI-1 --auto --primary --left-of HDMI-2
xrandr --output eDP-1 --off
