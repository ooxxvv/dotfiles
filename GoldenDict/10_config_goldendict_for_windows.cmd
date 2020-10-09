@echo off
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Config GoldenDict for Windows
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%

set sdata_dir=a:\Dropbox\sData
set config_dir=%AppData%\GoldenDict
set exe_file=C:\GoldenDict\GoldenDict.exe
set lnk_file=%ProgramData%\Microsoft\Windows\Start Menu\Programs\GoldenDict.lnk

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo '=============== GoldenDict Settings ==================================='
echo '= * Copy config files '
echo '= * Copy dictionary config files '
echo '======================================================================='
pause
xcopy /s /y "%sdata_dir%\Dictionary" "%config_dir%%\Dictionary\"
xcopy /s /y "%this_dir%\styles" "%config_dir%\styles\"
echo f | xcopy /y "%this_dir%\config.windows" "%config_dir%\config"

echo "=============== GoldenDict for Start Menu ============================="
echo "======================================================================="
pause
set ps_cmd=$s=(New-Object -ComObject WScript.Shell).CreateShortcut('%lnk_file%');
set ps_cmd=%ps_cmd% $s.TargetPath='%exe_file%';
set ps_cmd=%ps_cmd% $s.Arguments='';
set ps_cmd=%ps_cmd% $s.Save()
powershell "%ps_cmd%"
echo "Created: %lnk_file%"

echo "=============== Run GoldenDict ========================================"
echo "======================================================================="
pause
start "" "%lnk_file%"

echo "========== All Done ==================================================="
pause
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
endlocal
exit 0

