#!/bin/sh
#############################################################################
# Power manager and Screensaver
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"
this_dir=$PWD

################################################################# Process ###
echo "==================== RIME setting files ==============================="
echo "= * Copy files for  bô-siánn-mih "
echo "======================================================================="
target_folder=~/.config/ibus/rime
mkdir -p $target_folder
cp -arf $this_dir/rime_files/. $target_folder/

echo "==================== IBus, General ===================================="
echo "= * Next input method: Empty "
echo "= * Candidates orientation: Vertical "
echo "= * Show property panel: Do not show "
echo "= * Enable: Show icon on system tray "
echo "= * Enable: Embed preedit text in application window "
echo "======================================================================="
dconf write /desktop/ibus/general/hotkey/triggers "@as []"
dconf write /desktop/ibus/panel/lookup-table-orientation 1
dconf write /desktop/ibus/panel/show 0
dconf write /desktop/ibus/panel/show-icon-on-systray true
dconf write /desktop/ibus/general/embed-preedit-text true

echo "==================== IBus, Input Method ==============================="
echo "= * Only one input method: RIME "
echo "======================================================================="
dconf write /desktop/ibus/general/preload-engines "['rime']"

echo "==================== IBus, Emoji ======================================"
echo "= * Emoji annotation: Empty "
echo "= * Unicode code point: Empty "
echo "======================================================================="
dconf write /desktop/ibus/panel/emoji/hotkey "@as []"
dconf write /desktop/ibus/panel/emoji/unicode-hotkey "@as []"

echo "==================== IBus, Advanced ==================================="
echo "= * Disable: Use system keyboard layout "
echo "= * Disable: Share the same input method among all applications "
echo "======================================================================="
dconf write /desktop/ibus/general/use-system-keyboard-layout false
dconf write /desktop/ibus/general/use-global-engine false


