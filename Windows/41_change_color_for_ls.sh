#!/bin/sh
#############################################################################
# Change color setting of WSL
####################################################### Working Directory ###
cd "$(dirname "$0")"

################################################################ Variable ###
rc_file=~/.zshrc

################################################################# Process ###
echo '==================== Change color for result of ls ===================='

echo "LS_COLORS='ow=01;36;40'" >> $rc_file
echo "export LS_COLORS" >> $rc_file
echo "zstyle ':completion:*' list-colors \${(s.:.)LS_COLORS}" >> $rc_file



