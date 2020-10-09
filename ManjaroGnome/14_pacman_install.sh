#!/bin/sh
#############################################################################
# Install applications by pacman
############################################# Wrok Directory & Variables ####
cd "$(dirname "$0")"
user_home=$HOME

################################################################# Process ###
echo "=============== Install by pacman ====================================="
sudo pacman -Syu
sudo pacman -S albert \
               chromium copyq \
               doublecmd-gtk2 \
               goldendict gvim \
               ibus ibus-rime \
               keepassxc \
               qt5ct \
               vlc

echo "=============== oh-my-zsh ====================================="
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "=============== Copy vimfiles ========================================="
sh ../Vim/10_config_vim_linux.sh


