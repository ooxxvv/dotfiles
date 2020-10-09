@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Settings for SAP Front-End
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
cd ..
set pData_dir=%cd%

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo ========== Copy SAP Connections ========================================
pause
set source_dir="a:\Dropbox\sData\SAP"
set target_dir="%AppData%\SAP\Common"

mkdir "%target_dir%
copy /y "%source_dir%\SAPUILandscape.xml" "%target_dir%\SAPUILandscape.xml"

echo ========== Done ========================================================
pause


