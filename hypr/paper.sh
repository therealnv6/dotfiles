#!/bin/bash

randomwp=$(find ${HOME}/Pictures/wallpapers/* | shuf -n 1)
config_file=~/.config/hypr/hyprpaper.conf # change this if you have it in a different directory

# we want to load the wallpaper, we do this by pushing it into the `hyprpaper.conf` file.
echo -e "preload=$randomwp\nwallpaper=,$randomwp" >"$config_file"

# we don't want to start unlimited hyprpaper instances, so if one is already open, just kill it.
pkill hyprpaper

# we start the actual hyprpaper program
hyprpaper &
disown
