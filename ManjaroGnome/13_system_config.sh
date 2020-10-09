#!/bin/sh
#############################################################################
# Modify system settings via command line
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"
this_dir=$PWD

################################################################# Process ###
echo '=============== Disable system sound (beep) ==========================='
dconf write /org/gnome/desktop/sound/event-sounds "false"

echo '=============== Color for Terminal ===================================='
dconf load /org/gnome/terminal/ < $this_dir/dconf/org_gnome_terminal.txt

