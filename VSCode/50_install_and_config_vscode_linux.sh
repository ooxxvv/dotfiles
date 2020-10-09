#!/bin/sh
#############################################################################
# Install and config gVim
############################################# Wrok Directory & Variables ####
cd "$(dirname "$0")"
this_dir=$PWD

config_dir=~/.config/Code\ -\ OSS/User
################################################################# Process ###
echo "=============== Install by pacman ====================================="
sudo pacman -S code \
               nodejs npm

echo "=============== Copy json files ======================================="
mkdir -p "$config_dir"
cp -f $this_dir/settings.json "$config_dir/settings.json"
cp -f $this_dir/keybindings.json  "$config_dir/keybindings.json"

