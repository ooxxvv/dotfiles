@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config Notepad2 for Windows
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%
set config_dir=%AppData%
set sendto_dir=%AppData%\Microsoft\Windows\SendTo
set exe_file=C:\Notepad4\Notepad4.exe
set lnk_file=%ProgramData%\Microsoft\Windows\Start Menu\Programs\Notepad4.lnk

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "=============== Configurtion Files ===================================="
echo "======================================================================="
copy /y "%this_dir%\Notepad4.ini" "%config_dir%\"

echo "=============== Shortcut for Start Menu ==============================="
echo "======================================================================="
set ps_cmd=$s=(New-Object -ComObject WScript.Shell).CreateShortcut('%lnk_file%');
set ps_cmd=%ps_cmd% $s.TargetPath='%exe_file%';
set ps_cmd=%ps_cmd% $s.Arguments='';
set ps_cmd=%ps_cmd% $s.Save()
powershell "%ps_cmd%"
echo "Created: %lnk_file%"

echo "=============== Shortcut for SendTo ==================================="
echo "======================================================================="
del /q "%sendto_dir%\*.*"
copy /y "%lnk_file%" "%sendto_dir%\Notepad4.lnk"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause
endlocal
exit 0
