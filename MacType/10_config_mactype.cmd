@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config MacType for Windows
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%
set install_dir=%ProgramFiles%\MacType

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "=============== MacType Settings ======================================"
echo "= * Copy ini to %ProgramFiles%\MacType\ini "
echo "= * Run MacType to set following manually: "
echo "=   * Load with MacTray: Registry Mode "
echo "======================================================================="
pause
del /q "%install_dir%\ini\*.*"
copy /y "%this_dir%\ooxxvv.ini" "%install_dir%\ini\"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause

endlocal
exit 0

