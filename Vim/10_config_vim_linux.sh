#!/bin/sh
#############################################################################
# Config VIM and Plugins
############################################# Wrok Directory & Variables ####
cd "$(dirname "$0")"
vim_dir=$HOME/.vim
pack_base_dir=$HOME/.vim/pack

################################################################# Process ###
echo "=============== Copy vimfiles ========================================="
mkdir -p $vim_dir
cp -f ./gvimrc $vim_dir/
cp -f ./vimrc $vim_dir/

echo "=============== Clone repository for UI ==============================="
pack_dir=$pack_base_dir/ui/start
mkdir -p $pack_dir

git clone https://github.com/NLKNguyen/papercolor-theme $pack_dir/papercolor-theme
git clone https://github.com/vim-airline/vim-airline $pack_dir/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes $pack_dir/vim-airline-themes

echo "=============== Remove default shortcuts =============================="
sudo rm -f /usr/share/applications/vim.desktop


