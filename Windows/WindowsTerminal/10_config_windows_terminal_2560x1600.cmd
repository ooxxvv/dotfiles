@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config Windows Terminal
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%
set config_dir=%UserProfile%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "=============== Copy settings.json ===================================="
md "%config_dir%"
copy /y "%this_dir%\settings_2560x1600.json" "%config_dir%\settings.json"

echo "=============== Crate shortcuts to StartMenu ==========================="
set lnk_file=%AppData%\Microsoft\Windows\Start Menu\windowsTerminal.lnk
set exe_file=%LocalAppData%\Microsoft\WindowsApps\wt.exe
set ico_file=%SystemDrive%\TotalCommander\ooxxvv\LISTooxxvv.icl

set ps_cmd=$s=(New-Object -ComObject WScript.Shell).CreateShortcut('%lnk_file%');
set ps_cmd=%ps_cmd% $s.TargetPath='%exe_file%';
set ps_cmd=%ps_cmd% $s.Arguments='';
set ps_cmd=%ps_cmd% $s.IconLocation='%ico_file%, 2';
set ps_cmd=%ps_cmd% $s.Save()
powershell "%ps_cmd%"
echo "Created: %lnk_file%"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause

endlocal
exit 0

