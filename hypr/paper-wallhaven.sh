#!/bin/bash

# retrieve a random wallpaper URL from Wallhaven

if [[ -z "${WH_API_KEY}" ]]; then
	randomwp=$(curl -s "https://wallhaven.cc/api/v1/search?q=${QUERY}&purity=111&sorting=random" | jq -r '.data[0].path')
else
	randomwp=$(curl -s "https://wallhaven.cc/api/v1/search?q=${QUERY}&purity=111&sorting=random&apikey=${WH_API_KEY}" | jq -r '.data[0].path')
fi

config_file=~/.config/hypr/hyprpaper.conf # change this if you have it in a different directory

# download the wallpaper from Wallhaven and save it to a temporary directory
wallpaper_dir="/tmp/wallpapers"
wallpaper_path="$wallpaper_dir/$(basename "$randomwp")"

rm -rf "$wallpaper_dir"

mkdir -p "$wallpaper_dir"
curl -s -o "$wallpaper_path" "$randomwp"

# set the wallpaper in the hyprpaper.conf file
echo -e "preload=$wallpaper_path\nwallpaper=,$wallpaper_path" >"$config_file"

# kill any existing hyprpaper instances
pkill hyprpaper

# start the hyprpaper program
hyprpaper &
disown
