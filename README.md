# Batch 

**Documentation:**

https://docs.microsoft.com/en-us/windows-server/administration/windows-commands

https://ss64.com/nt/

https://guides.github.com/features/mastering-markdown/

https://docs.microsoft.com/en-us/windows/deployment/usmt/usmt-recognized-environment-variables

https://ss64.com/vb

# Cleaning User profile and scripting tedious tasks

**Commands, parameters and paths are case insensitive. In general used unix lower case style.**


**Principle of Least Privilege (POLP)**

**Scripts requiring elevated privileges have _prv suffix.**


**WIP**

**Windows 10** default **environment variables** used:

%userprofile%

%temp% ==  %tmp%

%systemdrive% == C:\



open_ivanti_appsensevirtual_folder.bat
```batch
explorer C:\appsensevirtual\
# or something like
# explorer %systemdrive%\appsensevirtual\
```
notes:
* Open appsensevirtual without checking/unchecking
View Hidden Items, **stop ivanti services to be able to delete all subfolders**

open_folders_for_cleanup_User_Level.bat
```batch
explorer "%userprofile%\AppData\Local\Temp\"
explorer "%userprofile%\AppData\Local\Microsoft\Windows\INetCookies\"
explorer "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\"
explorer C:\appsensevirtual
```
clean_user_TEMP_tested.bat
```batch
@echo off
title clean_user_TEMP_tested
del /f /s /q "%userprofile%\AppData\Local\Temp\*.*"
rd /s /q "%userprofile%\AppData\Local\Temp\"
cls
echo.
echo TEMP cleaned
echo.
echo Cleaned current users TEMP files
pause
```
**To be scripted:**

User profiles cleanup:

sysdm.cpl

System Properties > Advanced Tab > User Profiles Settings...

## Resources Used:

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

**Batch UAC - Admin**

https://stackoverflow.com/questions/1894967/how-to-request-administrator-access-inside-a-batch-file

https://sites.google.com/site/eneerge/scripts/batchgotadmin

**Existing .vbs profile cleaners:**

https://ss64.com/vb/syntax-profile.html

https://ss64.org/viewtopic.php?id=1025

**ccleaners winapp2.ini files can be used for programs temp files paths and .reg keys cleanup**

http://content.thewebatom.net/files/winapp2.ini

https://github.com/MoscaDotTo/Winapp2

https://raw.githubusercontent.com/MoscaDotTo/Winapp2/master/Winapp2.ini

Browser Batch cookies, cache and history cleaners:

https://catonmat.net/clear-privacy-ie-firefox-opera-chrome-safari
