@echo off
title Credentials Manager Cleaner

For /F "tokens=1,2 delims= " %%G in ('cmdkey /list ^| findstr Target') do  cmdkey /delete %%H

echo.
echo Removed Credentials from Credentials Manager
echo.
pause
