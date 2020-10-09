#!/bin/sh
#############################################################################
# Copy style files to system folders
########################################### Working Directory & Variables ###
cd "$(dirname "$0")"
this_dir=$PWD
cd ..
pdata_dir=$PWD
cd "$(dirname "$0")"

sdata_dir=~/Dropbox/sData

################################################################# Process ###
echo '=============== Wallpaper files ======================================='
target_dir=/usr/share/backgrounds
sudo mkdir -p $target_dir
sudo cp -f $pdata_dir/Wallpapers/Desktop.jpg $target_dir/

echo '=============== Font files ============================================'
target_dir=/usr/share/fonts
sudo cp -fr $sdata_dir/FontBase $target_dir/FontBase
sudo fc-cache -fv


