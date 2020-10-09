#!/bin/sh
#############################################################################
# Install themes for style, icon, and cursor
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"

################################################################# Process ###
echo "==================== Install by pacman ================================"
# xorg-xcursorgen for build cursor theme
sudo pacman -Syu && sudo pacman -S mint-themes mint-x-icons xorg-xcursorgen

echo "==================== Build by git repository =========================="
mkdir -p ~/Code
cd ~/Code
git clone git@github.com:ooxxvv/simple-colorful

cd ~/Code/simple-colorful
sh 00_install_theme.sh

