#!/bin/sh
#############################################################################
# Install and config Dropbox
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"
this_dir=$PWD

################################################################# Process ###
echo '=============== Install Dropbox ======================================='
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

echo '=============== Set to startup ========================================'
form_dir=$this_dir/home_local_share_applications/desktops
to_dir=$HOME/.config/autostart
cp $form_dir/Dropbox.desktop $HOME/.config/autostart/

echo '=============== Login and run ========================================='
~/.dropbox-dist/dropboxd


