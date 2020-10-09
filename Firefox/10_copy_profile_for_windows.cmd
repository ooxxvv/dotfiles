@echo off
set local
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Copy profile to system path of windows
:::::::::::::::::::::::::::::::::::::::::::: Working Directory & Variable :::
cd /d %~dp0
set this_dir=%cd%

set profile_base=%AppData%\Mozilla\Firefox\Profiles
set download_to=%UserProfile%\Desktop
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Process :::
echo "========== Copy Firefox Profile ======================================="
echo "======================================================================="
pause
for /f "delims=" %%a in ('dir /b %profile_base%\*.default-release') do set "profile_name=%%a"
xcopy /s /y "%this_dir%\Profile" "%profile_base%\%profile_name%"

echo "========== Modify User.js ============================================="
echo "= * Set Download To Desktop "
echo "= * Change setting of Font Rendering "
echo "======================================================================="
pause
set user_js=%profile_base%\%profile_name%\user.js

set pref_str=%download_to:\=\\%
set pref_str=user_pref("browser.download.dir", "%pref_str%");
echo %pref_str% >> %user_js%
set pref_str=user_pref("browser.download.folderList", 2);
echo %pref_str% >> %user_js%

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "========== All Done ==================================================="
pause

endlocal
@echo on

