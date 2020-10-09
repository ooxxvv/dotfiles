#!/bin/sh
#############################################################################
# Install and config gVim
############################################# Wrok Directory & Variables ####
cd "$(dirname "$0")"

user_home=$HOME
gui_jar=$user_home/Desktop/SAPGUI.JAR
hana_sar=$user_home/Desktop/HANA_STUDIO.SAR
sap_car=$user_home/Desktop/sapcar.linux

################################################################# Process ###
echo "=============== JDK and JavaFX ========================================"
sudo pacman -S jdk11-openjdk java11-openjfx

echo "=============== Install SAP GUI JAVA =================================="
echo "= * Download newest patch and rename to $gui_jar "
echo "= * Install to ~/sap/gui "
echo "======================================================================="
read -p "Ready to install? (Y/n): " input_value
if [ "$input_value" = "Y" ];then
  java -jar $gui_jar install
fi

echo "=============== Install SAP HANA Studio ==============================="
echo "= * Download newest .sar and rename to $hana_sar "
echo "= * Copy SAPCAR.LINUX to $sap_car "
echo "= * Install to ~gnome-terminal/sap/hdbstudio "
echo "= * Workspace: ~/sap/workspace "
echo "======================================================================="
read -p "Ready to install? (Y/n): " input_value
if [ "$input_value" != "Y" ];then
  echo 'Do nothing.'
  exit
fi

cd $user_home
$sap_car -xvf $hana_sar
$user_home/SAP_HANA_STUDIO/hdbsetup
rm -rf $user_home/SAP_HANA_STUDIO

echo "=============== Install SAP Development Tools ========================="
echo "= * Set HANA Studio to using the same JRE of SAP GUI "
echo "=  * Change hdbstudio.ini "
echo "=  * Replace the next line of '-vm' to: '/a/oHome/sap/gui/SAPGUI7.50rev11/jre/bin' "
echo "= * Run HANA Studio and install development tools "
echo "= * VIM: http://vrapper.sourceforge.net/update-site/stable "
echo "= * SAP Development: https://tools.hana.ondemand.com/<EclipseVersion> "
echo "=== * Visit (https://tools.hana.ondemand.com/) to get more information "
echo "======================================================================="


