#!/bin/sh
#############################################################################
# Eclipse for SAP development
#  * Eclipse => https://www.eclipse.org/
#  * SapMachine JRE => https://sap.github.io/SapMachine/
############################################# Wrok Directory & Variables ####
cd "$(dirname "$0")"

to_dir=/mnt/a/oHome/Desktop
install_dir=/mnt/c/Sap
ini_file=$install_dir/eclipse/eclipse.ini

################################################################# Process ###
echo "=============== Install unzip ========================================="
sudo apt install -y unzip

echo "=============== Eclipse ==============================================="
url_base="http://download.eclipse.org/technology/epp/downloads/release"
ver_num="2020-06"
from_url="$url_base/$ver_num/R/eclipse-java-$ver_num-R-win32-x86_64.zip"
to_file="$to_dir/eclipse-$ver_num.zip"
echo "Version: $ver_num"
echo "Save To: $to_file"

if [ ! -f "$to_file" ]; then
  curl -kL $from_url > $to_file
fi

echo "=============== Unzip to $install_dir ================================="
unzip -o $to_file -d $install_dir

echo "=============== SAP Java Machine (JRE) ================================"
url_base="https://github.com/SAP/SapMachine/releases/download"
ver_num="11.0.8"
from_url="$url_base/sapmachine-$ver_num/sapmachine-jre-"$ver_num"_windows-x64_bin.zip"
to_file="$to_dir/sapjre-$ver_num.zip"
echo "Version: $ver_num"
echo "Save To: $to_file"

if [ ! -f "$to_file" ]; then
  curl -kL $from_url > $to_file
fi

echo "=============== Unzip to $install_dir/eclipse/jre ====================="
unzip -o $to_file -d $install_dir/eclipse/jre
cp -rf $install_dir/eclipse/jre/sapmachine-jre-$ver_num/. $install_dir/eclipse/jre/
rm -r $install_dir/eclipse/jre/sapmachine-jre-$ver_num

echo "=============== Set sacle to fix small icon ==========================="
echo "-Dswt.enable.autoScale=true" >> $ini_file
echo "-Dswt.autoScale=125" >> $ini_file
echo "-Dswt.autoScale.method=nearest" >> $ini_file

echo "=============== Done ==================================================="


