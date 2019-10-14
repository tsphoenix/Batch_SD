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
