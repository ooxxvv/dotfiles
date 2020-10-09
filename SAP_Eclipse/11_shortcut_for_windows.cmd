@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Eclipse with SAP Development Tools
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%
set exe_file=c:\Sap\eclipse\eclipse.exe
set sendto_dir=%AppData%\Microsoft\Windows\SendTo
set lnk_file=%AppData%\Microsoft\Windows\Start Menu\Programs\Eclipse.lnk

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo ========== Create shortcut for Start Menu ==============================
echo "Creating......"
set ps_cmd=$s=(New-Object -ComObject WScript.Shell).CreateShortcut('%lnk_file%');
set ps_cmd=%ps_cmd% $s.TargetPath='%exe_file%';
set ps_cmd=%ps_cmd% $s.Arguments='';
set ps_cmd=%ps_cmd% $s.WindowStyle=7;
set ps_cmd=%ps_cmd% $s.Save()
powershell "%ps_cmd%"
echo "Created: %lnk_file%"

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ========== All Done ====================================================
pause

endlocal
exit 0
