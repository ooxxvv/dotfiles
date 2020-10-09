@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config Keypirinha for Windows
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%
set config_dir=C:\Keypirinha\portable\Profile\User

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "=============== Keypirinha Settings ==================================="
echo "= * Copy ini to %config_dir% "
echo "= * Run Keypirinha "
echo "======================================================================="
pause
md "%config_dir%"
copy /y "%this_dir%\Keypirinha.ini" "%config_dir%\"
start "" "C:\Keypirinha\keypirinha.exe"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause
endlocal
exit 0

