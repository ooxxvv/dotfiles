@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config Keypirinha for Windows
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%
set config_dir=%AppData%\Code\User
set lnk_dir=%AppData%\Microsoft\Windows\Start Menu\Programs\Visual Studio Code

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "=============== User Settings ========================================="
echo "= * Copy config files to %config_dir% "
echo "======================================================================="
copy /y "%this_dir%\settings_2560x1600.json" "%config_dir%\settings.json"
copy /y "%this_dir%\keybindings.json" "%config_dir%"

echo "=============== Copy shortcut to SendTo ==============================="
echo "======================================================================="
copy /y "%lnk_dir%\Visual Studio Code.lnk" "%AppData%\Microsoft\Windows\SendTo\"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause

endlocal
exit 0

