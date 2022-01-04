@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config Keypirinha for Windows
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%
set config_dir=%APPDATA%\Rime

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "========== Copy config files =========================================="
echo "= * RIME/rime_files/* to %APPDATA%\\Rime\\ "
echo "= * RIME/weasel_2560x1600.custom.yaml to %APPDATA%\\Rime\\ "
echo "======================================================================="
md %config_dir%
copy /y %this_dir%\rime_files\*.* "%config_dir%\"
copy /y %this_dir%\weasel_2560x1600.custom.yaml "%config_dir%\weasel.custom.yaml"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause

endlocal
exit 0
