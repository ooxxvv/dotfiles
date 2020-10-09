#!/bin/sh
#############################################################################
# Config GoldenDict for Linux Mint Xfce
########################################### Working Directory & Variables ###
cd "$(dirname "$0")"
this_dir=$PWD

sdata_dir=~/Dropbox/sData
config_dir=~/.goldendict
autostart_dir=~/.config/autostart

################################################################# Process ###
echo "=============== Copy settings of GoldenDict ==========================="
mkdir -p $config_dir
cp -f $this_dir/config.linux $config_dir/config
cp -rf $this_dir/styles $config_dir/styles

echo "=============== Copy dictionaries for GoldenDict ======================"
cp -rf $sdata_dir/Dictionary $config_dir/Dictionary

echo "=============== Copy shortcut to config folder ========================"
cp -f $this_dir/home_config_autostart/GoldenDict.desktop $autostart_dir

