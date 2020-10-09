@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Call VIM on WSL with file name
:: Execute script minimized by making him restart itself minimised
:::: https://stackoverflow.com/questions/9232308/how-do-i-minimize-the-command-prompt-from-my-bat-file
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Execute script minimized by making him restart itself minimised
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
cd %~dp1
%LOCALAPPDATA%\wsltty\bin\mintty.exe --WSL= --configdir="%APPDATA%\wsltty" vim %~nx1

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
endlocal
exit 0
