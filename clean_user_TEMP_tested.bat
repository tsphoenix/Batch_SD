@echo off
title clean_user_TEMP_tested ts
del /f /s /q "%userprofile%\AppData\Local\Temp\*.*"
rd /s /q "%userprofile%\AppData\Local\Temp\"
cls
echo.
echo TEMP cleaned
echo.
echo Cleaned current users TEMP files
pause
