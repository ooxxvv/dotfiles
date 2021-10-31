@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config Notepad2 for Windows
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%
set config_dir=%ProgramFiles%\Notepad2
::set start_dir=%ProgramData%\Microsoft\Windows\Start Menu\Programs\Accessories
set sendto_dir=%AppData%\Microsoft\Windows\SendTo

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "=============== Configurtion Files ===================================="
echo "======================================================================="
copy /y "%this_dir%\Notepad2.ini" "%config_dir%\"

echo "=============== Shortcut for Start Menu ==============================="
echo "======================================================================="
set exe_file=%ProgramFiles%\Notepad2\Notepad2.exe
set lnk_file=%ProgramData%\Microsoft\Windows\Start Menu\Programs\Notepad2.lnk

set ps_cmd=$s=(New-Object -ComObject WScript.Shell).CreateShortcut('%lnk_file%');
set ps_cmd=%ps_cmd% $s.TargetPath='%exe_file%';
set ps_cmd=%ps_cmd% $s.Arguments='';
set ps_cmd=%ps_cmd% $s.Save()
powershell "%ps_cmd%"
echo "Created: %lnk_file%"

echo "=============== Shortcut for SendTo ==================================="
echo "======================================================================="
del /q "%sendto_dir%\*.*"
copy /y "%lnk_file%" "%sendto_dir%\Notepad2.lnk"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause
endlocal
exit 0
