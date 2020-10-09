@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Settings for SAP Front-End
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
cd ..
set pData_dir=%cd%

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo ========== Copy ABAP Settings ==========================================
pause
set source_dir=%pData_dir%\SAP\AbapEditor
set target_dir=%AppData%\SAP\SAP GUI\ABAP Editor

mkdir "%target_dir%"
copy /y "%source_dir%\abap_spec.xml" "%target_dir%\abap_spec.xml" 
copy /y "%source_dir%\settings.xml" "%target_dir%\settings.xml" 

echo ========== Done ========================================================
pause


