#!/bin/sh
#############################################################################
# Power manager and Screensaver
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"
this_dir=$PWD

################################################################# Process ###
echo "==================== Copy theme files ================================="
cp -arf ./themes/. ~/.oh-my-zsh/themes/

echo "==================== Set theme ========================================"
read -p "Run vim to set theme to ooxxvv (Y/n)? " ans

if [ "$ans" = "Y" ]; then
  vim ~/.zshrc
fi


