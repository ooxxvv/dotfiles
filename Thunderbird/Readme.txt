====== Step 1: Enable Custom Stylesheets in Thunderbird 
By default, Thunderbird disables userChrome.css to ensure stability, as developers frequently change interface elements. You need to manually enable it: 
1) Open Thunderbird and navigate to Settings > General.
2) Scroll to the bottom and click the Config Editor... button.
3) In the search bar, type: toolkit.legacyUserProfileCustomizations.stylesheets.
4) Toggle the value from false to true by clicking the button on the far right of the entry.
====== Step 2: Locate Your Profile Folder
Next, you need to find the specific folder where Thunderbird stores your profile data:
1) Go to Help > Troubleshooting Information.
2) In the Application Basics section, find the row labeled Profile Folders and click the Open Folder button.
3) A new window will open to your active profile folder.
4) Exit Thunderbird completely before proceeding to the next step. 
====== Step 3: Create the chrome Folder and userChrome.css File
1) Inside your profile folder: Create a new folder and name it exactly chrome (all lowercase).
2) Inside the newly created chrome folder, create a new text file and name it exactly userChrome.css. Ensure the file is not named userChrome.css.txt.

====== Disable Template Folder by userChrome.css
#folderPane li[data-folder-type="templates"] {display: none !important;}