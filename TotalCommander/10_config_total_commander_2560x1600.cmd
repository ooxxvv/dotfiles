@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config Total Commander
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%
set config_dir=C:\TotalCommander\ooxxvv
set ini_dir=%AppData%\GHISLER

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "=============== Total Commander Settings =============================="
echo "= * Copy style to %config_dir% "
echo "= * Copy ini to %ini_dir% "
echo "======================================================================="
pause

copy /y "%this_dir%\usercmd.ini" "%AppData%\GHISLER\usercmd.ini"
copy /y "%this_dir%\wincmd_2560x1600.ini" "%AppData%\GHISLER\wincmd.ini"

md "%config_dir%"
copy /y "%this_dir%\ooxxvv\*.*" "%config_dir%\"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause
endlocal
exit 0

