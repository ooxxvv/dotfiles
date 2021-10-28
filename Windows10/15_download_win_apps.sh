#!/bin/sh
#############################################################################
# Download Software for install
####################################################### Working Directory ###
cd "$(dirname "$0")"

################################################################ Variable ###
to_dir=/mnt/a/oHome/Desktop

################################################################# Process ###
echo '==================== RIME -  Weasel ==================================='
url_base="https://dl.bintray.com/rime/weasel/weasel"
ver_num="0.14.3.0"
from_url=$url_base"-"$ver_num"-installer.exe"
to_file="$to_dir/Rime_Weasel_Install.exe"

echo "Version: $ver_num"
echo "Save To: $to_file"
curl -kL $from_url > $to_file

echo '==================== GoldenDict ======================================='
url_base="https://nchc.dl.sourceforge.net/project/goldendict/early%20access%20builds/Qt5-based/64bit/GoldenDict-1.5.0-RC2-372-gc3ff15f_%28QT_5123%29%2864bit%29.7z"
ver_num="Qt 5.12.3-based 64-bit build"
from_url=$url_base
to_file="$to_dir/GoldenDict.7z"

echo "Version: $ver_num"
echo "Save To: $to_file"
curl -ko $to_file $from_url

echo '==================== Notepad2 ========================================='
url_base="https://www.flos-freeware.ch/zip/Notepad2_4.2.25_x64.exe"
ver_num="4.2.25"
from_url=$url_base
to_file="$to_dir/Notepad2_Install.exe"
echo "Version: $ver_num"
echo "Save To: $to_file"
curl -ko $to_file $from_url

echo '==================== 7-Zip ============================================'
url_base="https://www.7-zip.org/a"
ver_num="1900"
from_url="$url_base/7z$ver_num-x64.exe"
to_file="$to_dir/7zip_Install.exe"

echo "Version: $ver_num"
echo "Save To: $to_file"
curl -kL $from_url > $to_file

echo '==================== Total Commander =================================='
url_base="https://totalcommander.ch/win"
ver_num="951"
from_url="$url_base/tcmd$ver_num""x64.exe"
to_file="$to_dir/TotalCommander_Install.exe"

echo "Version: $ver_num"
echo "Save To: $to_file"
curl -kL $from_url > $to_file

echo '==================== Keypirinha ======================================='
url_base="https://github.com/Keypirinha/Keypirinha/releases/download"
ver_num="2.26"
from_url="$url_base/v$ver_num/keypirinha-$ver_num-x64-portable.7z"
to_file="$to_dir/Keypirinha.7z"

echo "Version: $ver_num"
echo "Save To: $to_file"
curl -kL $from_url > $to_file

echo '==================== MacType =========================================='
url_base="https://github.com/snowie2000/mactype/releases/download"
ver_num="2019.1-beta6"
from_url="$url_base/$ver_num/MacTypeInstaller_$ver_num.exe"
to_file="$to_dir/MacType_Install.exe"

echo "Version: $ver_num"
echo "Save To: $to_file"
curl -kL $from_url > $to_file

echo '==================== noMeiryoUI ======================================='
url_base="https://github.com/Tatsu-syo/noMeiryoUI/releases/download"
ver_num="TAG-2.41"
from_url="$url_base/$ver_num/noMeiryoUI241.zip"
to_file="$to_dir/noMeiryoUI.zip"

echo "Version: $ver_num"
echo "Save To: $to_file"
curl -kL $from_url > $to_file

echo '==================== KeePassXC ========================================'
url_base="https://github.com/keepassxreboot/keepassxc/releases/download"
ver_num="2.6.4"
from_url="$url_base/$ver_num/KeePassXC-$ver_num-Win64.msi"
to_file="$to_dir/KeepassXC_Install.msi"

echo "Version: $ver_num"
echo "Save To: $to_file"
curl -kL $from_url > $to_file

echo '==================== ImageGlass ========================================'
url_base="https://github.com/d2phap/ImageGlass/releases/download"
ver_num="8.0.12.8"
from_url="$url_base/$ver_num/ImageGlass_"$ver_num"_x64.msi"
to_file="$to_dir/ImageGlass_Install.msi"

echo "Version: $ver_num"
echo "Save To: $to_file"
curl -kL $from_url > $to_file

