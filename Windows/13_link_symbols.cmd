@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Config Symbolic Link on disk A
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "========== Symbolic Link for Home ====================================="
echo "======================================================================="
mklink /D A:\oHome %USERPROFILE%
mklink /D A:\Desktop %USERPROFILE%\Desktop
mklink /D A:\Dropbox "%USERPROFILE%\Dropbox"
mklink /D A:\OneDrive "%USERPROFILE%\OneDrive"

mkdir %USERPROFILE%\Code
mklink /D A:\Code %USERPROFILE%\Code

mkdir %USERPROFILE%\Gdrive
mklink /D A:\Gdrive %USERPROFILE%\Gdrive
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause

endlocal
exit 0
