@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config Windows Terminal
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%
set config_dir=%UserProfile%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
set start_dir=%AppData%\Microsoft\Windows\Start Menu

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "=============== Copy shortcuts to StartMenu ==========================="
copy /y "%this_dir%\WSL.bat" "%start_dir%\WSL.bat"

echo "=============== Copy settings.json ===================================="
md "%config_dir%"
copy /y "%this_dir%\settings.json" "%config_dir%\settings.json"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause

endlocal
exit 0

