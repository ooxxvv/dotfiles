@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config Keypirinha for Windows
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "=============== Packages =============================================="
set config_dir=C:\Keypirinha\portable\Profile\InstalledPackages
md "%config_dir%"
copy /y "%this_dir%\SystemCommands.keypirinha-package" "%config_dir%\"

echo "=============== Settings =============================================="
set config_dir=C:\Keypirinha\portable\Profile\User

md "%config_dir%"
copy /y "%this_dir%\Keypirinha.ini" "%config_dir%\"

echo "=============== Run Keypirinah ========================================"
start "" "C:\Keypirinha\keypirinha.exe"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause
endlocal
exit 0

