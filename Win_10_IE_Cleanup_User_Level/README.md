**Finished, Tested** 

Closing IE iexplore.exe taskkill /f /im iexplore.exe

Windows 10 default environment variables used:

%userprofile%

%temp% == %tmp%

%systemdrive% == C:\

Cleaning IE cookies

Win > Run > shell:cookies

%userprofile%\AppData\Local\Microsoft\Windows\INetCookies

Cleaning IE Cache

inetcpl.cpl

control /name Microsoft.InternetOptions

Internet Options > General Tab > Settings > View files

%userprofile%\AppData\Local\Microsoft\Windows\INetCache

notes:
* script made for **Windows 10**
* Script for running at **User level privileges**
* Using **rd** was used for removing subfolders
* Removing INetCookies and INetCache folders is possible, **these folders will be automatically recreated on IE start**, **rd** will delete INetCookies and INetCache folders and their subfolders, can also recreate folders with **md/mkdir**
* Removing Temp folder is not possible, **rd** will just wipe subfolders
* taskkill /f /im iexplore.exe is optional, most likey will cause *Your last browsing session closed unexpectetly* error - Restore session or press x to avoid restoring session.
* cleaning Temp is limited if any user apps are running
* cleaning Temp is added because it is cleaned often when troubleshooting IE related apps anyway 
* if exist line is optional, used for if else statements

Win_10_IE_Fix_User_Level.bat
```batch
@echo off
title Win_10_IE_Cleanup_User_Level

echo Win_10_IE_Cleanup_User_Level v1 @tsphoenix

taskkill /im iexplore.exe
taskkill /im /f iexplore.exe

if exist "%userprofile%\AppData\Local\Microsoft\Windows\INetCookies\" (
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\INetCookies\*.*"
rd /s /q "%userprofile%\AppData\Local\Microsoft\Windows\INetCookies\")

if exist "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\" (
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.*"
rd /s /q "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\")

if exist "%userprofile%\AppData\Local\Temp\" (
del /f /s /q "%userprofile%\AppData\Local\Temp\*.*"
rd /s /q "%userprofile%\AppData\Local\Temp\")

cls
echo.
echo Closed IE, INetCookies cleaned, echo INetCache cleaned, TEMP cleaned
echo.
echo Win_10_IE_Cleanup_User_Level executed without problems
pause
```


