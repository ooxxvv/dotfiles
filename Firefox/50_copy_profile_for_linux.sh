#!/bin/sh
#############################################################################
# Copy settings to profile of Firefox
########################################### Working Directory & Variables ###
cd "$(dirname "$0")"
this_dir=$PWD

################################################################# Process ###
echo "=============== Copy Firefox Profile =================================="
firefox_dir=~/.mozilla/firefox
default_pattern=\.default\-release$
profile_name=$(ls $firefox_dir | xargs -n 1 basename | grep $default_pattern)
profile_dir=$firefox_dir/$profile_name

echo "Firefox Profile Location: $profile_dir"
cp -rf $this_dir/Profile/. $profile_dir

echo "=============== Modify User.js ========================================"
user_js=$profile_dir/user.js
echo "user.js location: $user_js"

echo "========== Download To Desktop ========================================"
echo "user_pref('browser.download.dir', '$HOME/Desktop');" >> $user_js
echo "user_pref('browser.download.folderList', 2);" >> $user_js

echo "========== Default Search Engine ======================================"
echo "user_pref('browser.search.order.1', 'GoogleTW');" >> $user_js
echo "user_pref('browser.search.selectedEngine', 'GoogleTW');" >> $user_js
echo "user_pref('browser.urlbar.placeholderName', 'GoogleTW');" >> $user_js

echo "========== Font Size =================================================="
echo "user_pref('layout.css.devPixelsPerPx', '1.13');" >> $user_js

#############################################################################


