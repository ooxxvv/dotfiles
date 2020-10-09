@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config Notepad2 for Windows
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%
set config_dir=%AppData%
set start_dir=%ProgramData%\Microsoft\Windows\Start Menu\Programs\Accessories
set sendto_dir=%AppData%\Microsoft\Windows\SendTo

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "=============== Configurtion Files ===================================="
copy /y "%this_dir%\Notepad2.ini" "%config_dir%\"

echo "=============== Shortcut for SendTo ==================================="
del /q "%sendto_dir%\*.*"
copy /y "%start_dir%\Notepad.lnk" "%sendto_dir%\Notepad.lnk"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause
endlocal
exit 0
