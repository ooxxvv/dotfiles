#!/bin/sh
#############################################################################
# Clone repositories form Github
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"

################################################################# Process ###
#echo "==================== SSH setting for Github ==========================="
#chmod 400 ~/.ssh/github_ooxxvv
#ssh-add ~/.ssh/github_ooxxvv

echo "==================== Colone repositores ==============================="
mkdir -p ~/Code
cd ~/Code
git clone git@github.com:esutek/toolkit
git clone git@github.com:ooxxvv/dotfiles

