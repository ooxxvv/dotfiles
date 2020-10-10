Dropbox
==================================
 * 11_dropbox.sh

Files
===================================
 * Remove default Locations

Settings, Displays
=======================
 * Night Light: Disable

Settings, Mouse and Touchpad
====================================
 * Mouse Speed: 55%
 * TouchPad: Disable

Settings, Keyboard Shortcuts
===================================
 * Alternate Characters Key: Right Alt
 * Disable all shortcuts for PrintScreen
 * Set shortcut for screenshot
   * (Area) to clipboard: Print
   * (Full) to clipboard: Ctrl+Prit
 * Show the activities overview
   * Change from Alt+F1 to Alt+Space
   * Default (Alt+Space) is for Active the window menu

Tweaks, General
=====================================
 * Suspend when laptop lid is closed: Disable

Tweaks, Keyboard and Mouse, Mouse
=======================================
 * Acceleration Profile: Adaptive
 * Pointer Location: Disable
 * Middle Click Paste: Disable

Tweaks, Startup Applications
=======================================
 * create-template: Remove
 * MSM Notifier: Remove

Tweaks, Top Bar
==========================
 * Activities Overview Hot Corner: Disable
 * Clock, Date: Disable

Tweaks, Windows
===============================
 * Edge Tiling: Disable

Tweaks, Workspaces
=======================
 * Static Workspace: Enable
 * Number of Workspaces: 1

Dash-to-Panel Settings
===========================
 * Position
   * Show applications button: Visible
   * Activities button: Invisible
   * Left box: Invisible
   * Sequence: Right box, System menu, Date menu, Desktop button
 * Style
   * Panel Size: 32
   * App Icon Margin: 0
   * App Icon Padding: 4
   * Running indicator style (Focused app): Metro
     * Option, Indicator color - Icon Dominant: Enable
   * Running indicator style (Unfocused apps): Dots
   * Override panel theme background opacity: 50%
 * Behavior
   * Show favorite applications: Disable
 * Fine-Tune
   * Tray Font Size: 16
   * LeftBox Font Size: 16
   * Tray Item Padding: 4
   * Status Icon Padding: -1
   * LeftBox Padding: -1

Install Software
==================================
 * Check dropbox sync is finished
 * 12_ssh_and_a_folder.sh
 * 13_system_config.sh
 * 14_pacman_instIall.sh
 * 15_font_and_style.sh
 * 21_application_settings.sh
 * 22_dotfile_github.sh
 * 23_install_theme.sh

Qt5 Settings
=====================================
 * Change environment variable
   * sudo vim /etc/environment
   * Disable: QT_STYLE_OVERRIDE="kvantum"
   * Change: QT_QPA_PLATFORMTHEME="gnome"
     * To: "qt5ct"
 * Appearance
   * Style: Fusion
   * Standard dialogs: GTK3
 * Fonts
   * General: PingFang TC 11
   * Fixed width: Fira Mono 12
 * Interface
   * Dialog buttons layout: GNOME
   * Keyboard scheme: GNOME
   * Show shortcut underlines: Disablels

RIME and GRUB
=====================================
 * 16_RIME_and_GRUB.sh
 * Reboot


