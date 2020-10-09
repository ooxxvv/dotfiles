#!/bin/sh
#############################################################################
# Symbolic links for system folders
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"
this_dir=$PWD
base_dir=/a

################################################################# Process ###
echo '=============== Symbolic links in /a =================================='
sudo mkdir -p $base_dir
sudo chown $USER $base_dir

rm -f $base_dir/oHome
ln -svf ~/ $base_dir/oHome
ln -svft $base_dir/ ~/Desktop
ln -svft $base_dir/ ~/Dropbox

mkdir -p ~/Code
ln -svft $base_dir/ ~/Code

echo '=============== Symbolic links for ssh ================================'
source_folder=~/Dropbox/sData/SSH
target_folder=~/.ssh
rm -r $target_folder
ln -svf $source_folder $target_folder

find ~/.ssh/ -type f -print0 | xargs -0 chmod 600
chmod 600 ~/.ssh/config
chmod 660 ~/.ssh/known_hosts


