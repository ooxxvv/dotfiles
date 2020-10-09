#!/bin/sh
#############################################################################
# Copy application settings from synced cloud folder
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"
this_dir=$PWD
cd ..
dot_dir=$PWD
cd "$(dirname "$0")"
sdata_dir=~/Dropbox/sData

################################################################# Process ###
echo "==================== Firefox =========================================="
sh $dot_dir/Firefox/50_copy_profile_for_linux.sh

echo "==================== Albert ==========================================="
source_folder=$dot_dir/Albert
target_folder=/usr/share/albert/org.albert.frontend.widgetboxmodel
sudo cp -f $source_folder/themes/ooxxvv.qss  $target_folder/themes/ooxxvv.qss

target_folder=~/.config/albert
mkdir -p $target_folder
cp -f $source_folder/albert.conf  $target_folder/albert.conf

echo "==================== Double Commander ================================="
source_folder=$dot_dir/DoubleCommander
target_folder=~/.config/doublecmd
mkdir -p $target_folder
cp -f $source_folder/*  $target_folder/

echo "==================== Git =============================================="
source_folder=$dot_dir/Git/gitconfig.linux
target_folder=~/.gitconfig
cp -f $source_folder $target_folder

echo "==================== Default app for mime type ========================"
source_folder=$this_dir/home_local_share_applications
target_folder=~/.local/share/applications
cp -f $source_folder/mimeapps.list $target_folder/mimeapps.list

echo "==================== GoldenDict ======================================="
sh $dot_dir/GoldenDict/50_config_goldendict_for_linux.sh

echo "==================== ZSH =============================================="
sh $dot_dir/ZSH/00_install_theme.sh


