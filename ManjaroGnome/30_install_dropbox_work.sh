#!/bin/sh
#############################################################################
# Another instance of Dropbox for Work
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"
this_dir=$PWD

new_home="$HOME/.dropbox-work"
new_script=$new_home/run_dropbox_here.sh

################################################################# Process ###
echo "=============== Install Work Account Drobox ==========================="
mkdir -p $new_home
cd $new_home
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

echo "=============== Script for running Work Account Dropbox ==============="
echo "HOME=$new_home" > $new_script
echo "$new_home/.dropbox-dist/dropboxd" >> $new_script
chmod +x $new_script

echo "=============== Link folder ==========================================="
ln -svf $new_home/Dropbox/  /a/DropboxWork

echo "=============== Run Dropbox of Work Account ==========================="
sh $new_script



