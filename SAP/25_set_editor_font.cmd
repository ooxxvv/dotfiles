@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config Eclipse for Windows
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "=============== Appearance, Colors and Fonts =========================="
set config_dir=c:\sap\eclipse-workspace\.metadata\.plugins\org.eclipse.core.runtime\.settings
copy /y "%this_dir%\Eclipse\org.eclipse.ui.workbench.prefs" "%config_dir%\"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause
endlocal
exit 0

