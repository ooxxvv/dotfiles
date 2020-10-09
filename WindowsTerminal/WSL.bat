@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Call VIM on WSL with file name
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
:: Execute script minimized by making him restart itself minimised
:::: https://stackoverflow.com/questions/9232308/how-do-i-minimize-the-command-prompt-from-my-bat-file
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
wt -d "%~dp1" wsl

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
endlocal
exit 0
