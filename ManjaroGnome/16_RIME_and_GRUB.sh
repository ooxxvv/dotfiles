#!/bin/sh
#############################################################################
# Config applicatins before 1st reboot
############################################# Wrok Directory & Variables ####
cd "$(dirname "$0")"
this_dir=$PWD
cd ..
dot_dir=$PWD
cd $this_dir

################################################################# Process ###
echo "=============== RIME settings ========================================="
sh $dot_dir/RIME/50_ibus_by_dconf.sh

echo "=============== GRUB settings ========================================="
sh $dot_dir/GRUB/00_install_theme.sh
sh $dot_dir/GRUB/10_config_grub.sh

echo "=============== Reboot ================================================"
read -p "Reboot system now? (Y/n): " ans
if [ "$ans" == "Y" ]; then
  reboot
fi

