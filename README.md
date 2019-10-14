
#Cleaning Windows User profile - Tedious tasks that can be scripted or even automated with GPO

**WIP**

Closing IE iexplore.exe
taskkill /f /im iexplore.exe

**Windows 10** default **environment variables** used:

%userprofile%

%temp% ==  %tmp%

%systemdrive% == C:\

Cleaning IE cookies

Win > Run > shell:cookies

%userprofile%\AppData\Local\Microsoft\Windows\INetCookies

Cleaning IE Cache

inetcpl.cpl

control /name Microsoft.InternetOptions

Internet Options > General Tab > Settings > View files

%userprofile%\AppData\Local\Microsoft\Windows\INetCache

**To be scripted:**

User profiles cleanup:

sysdm.cpl

System Properties > Advanced Tab > User Profiles Settings...

Stop Ivanti

Wipe

C:\appsensevirtual\

**Commands, parameters and paths are case insensitive, for the consistency and unix style I used lower case.**

##Resources Used:

**Markdown .md**

https://guides.github.com/features/mastering-markdown/

**Commands:**

del
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/del

echo
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/echo

if
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/if

md
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/md

rd
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/rd

rmdir == rd
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/rmdir

rem
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/rem

taskkill
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/taskkill

**Environment Variables:**

Recognized Environment Variables

https://docs.microsoft.com/en-us/windows/deployment/usmt/usmt-recognized-environment-variables

User Shell Folders - Profile, Start Menu folder... 

https://ss64.com/nt/syntax-folders.html

Complete list of environment variables on Windows 10

https://pureinfotech.com/list-environment-variables-windows-10/

**Existing .bat Profile cleaners:**

**https://answers.microsoft.com/en-us/insider/forum/insider_wintp-insider_files/delete-some-unnecessary-folders-and-files-by/ae6ecc75-cfbb-4f29-b196-c0de1af256ed?auth=1**

https://mstoneblog.wordpress.com/?s=profile

https://mstoneblog.wordpress.com/2012/02/29/user-profile-clean-version-3-0/

https://mstoneblog.wordpress.com/2012/02/17/user-profile-cleaning-script-2-2/

https://mstoneblog.wordpress.com/2010/12/08/user-profile-cleaning-script-for-windows-7/

https://community.spiceworks.com/scripts/show/146-profile-clean-up

https://community.spiceworks.com/scripts/show/782-user-cleanup

https://community.spiceworks.com/scripts/show/1187-quick-cleanup-script-all-user-profiles

**Existing .vbs profile cleaners:**

https://ss64.com/vb/syntax-profile.html

https://ss64.org/viewtopic.php?id=1025

**ccleaners winapp2.ini files can be used for programs temp files paths and .reg keys cleanup**

http://content.thewebatom.net/files/winapp2.ini

https://github.com/MoscaDotTo/Winapp2

https://raw.githubusercontent.com/MoscaDotTo/Winapp2/master/Winapp2.ini

Browser Batch cookies, cache and history cleaners:

https://catonmat.net/clear-privacy-ie-firefox-opera-chrome-safari

Win_10_IE_Fix_User_Level.bat
```batch
@echo off
title Win_10_IE_Fix_User_Level

echo Win_10_IE_Fix_User_Level v1 by ts

taskkill /im iexplore.exe

if exist "%userprofile%\AppData\Local\Temp\" (
del /f /s /q "%userprofile%\AppData\Local\Temp\*.*"
rd /s /q "%userprofile%\AppData\Local\Temp\")

if exist "%userprofile%\AppData\Local\Microsoft\Windows\INetCookies\" (
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\INetCookies\*.*"
rd /s /q "%userprofile%\AppData\Local\Microsoft\Windows\INetCookies\")

if exist "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\" (
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.*"
rd /s /q "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\")

cls
echo.
echo TEMP cleaned, INetCookies cleaned, echo INetCache cleaned
echo.
echo Win_10_IE_Fix_User_Level executed without problems
pause
```

notes:
* script made for **Windows 10**
* Script for running at **User level privileges**
* Using **rd** was used for removing subfolders
* Removing INetCookies and INetCache folders is possible, **these folders will be automatically recreated on IE start**, **rd** will delete INetCookies and INetCache folders and their subfolders, can also recreate folders with **md/mkdir**
* Removing Temp folder is not possible, **rd** will just wipe subfolders
* taskkill /f /im iexplore.exe is optional, most likey will cause *Your last browsing session closed unexpectetly* error - Restore session or press x to avoid restoring session.
* cleaning Temp is limited if any user apps are running

Open appsensevirtual without checking/unchecking 
View Hidden Items, **stop ivanti to be able to delete all subfolders**

open_appsensevirtual_User_Level.bat
```batch
explorer C:\appsensevirtual
```

open_folders_for_cleanup_User_Level.bat
```batch
explorer "%userprofile%\AppData\Local\Temp\"
explorer "%userprofile%\AppData\Local\Microsoft\Windows\INetCookies\"
explorer "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\"
explorer C:\appsensevirtual
```
wipe_ivanti_appsensevirtual_prv_test.bat
```batch
del /f /s /q "C:\appsensevirtual\"
rd /s /q "C:\appsensevirtual\")
```
