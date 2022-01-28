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
mklink /D A:\Dropbox "%USERPROFILE%\Dropbox (­Ó¤H)"
mklink /D A:\OneDrive "%USERPROFILE%\OneDrive"

mkdir %USERPROFILE%\Code
mklink /D A:\Code %USERPROFILE%\Code

echo "========== Windows Service & Task ====================================="
echo "= * Set LIMITED: Windows Defender Scheduled Scan"
echo "= * Disable: Windows Search"
echo "======================================================================="
set task_name="\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan"
schtasks /change /rl LIMITED /tn %task_name%
sc config WSearch start= disabled

echo "========== Power Manager =============================================="
echo "= Time for Shutdown Screen: AC=30min, DC=5min"
echo "= Never Sleep/Stand By"
echo "= Do nothing when press Power Button"
echo "= Do nothing when press Sleep Button"
echo "= Do nothing when close screen of laptop"
echo "======================================================================="
powercfg -change monitor-timeout-ac 30
powercfg -change monitor-timeout-dc 5
powercfg -change standby-timeout-ac 0
powercfg -change standby-timeout-dc 0

set sub_guid=4f971e89-eebd-4455-a8de-9e59040e7347
set set_guid=7648efa3-dd9c-4e3e-b566-50f929386280
powercfg -setacvalueindex SCHEME_CURRENT %sub_guid% %set_guid% 0
powercfg -setdcvalueindex SCHEME_CURRENT %sub_guid% %set_guid% 0

set set_guid=96996bc0-ad50-47ec-923b-6f41874dd9eb
powercfg -setacvalueindex SCHEME_CURRENT %sub_guid% %set_guid% 0
powercfg -setdcvalueindex SCHEME_CURRENT %sub_guid% %set_guid% 0

set set_guid=5ca83367-6e45-459f-a27b-476b1d01c936
powercfg -setacvalueindex SCHEME_CURRENT %sub_guid% %set_guid% 0
powercfg -setdcvalueindex SCHEME_CURRENT %sub_guid% %set_guid% 0

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause

endlocal
exit 0
