@echo off
title user_TEMP_cleaner
del /f /s /q "%userprofile%\AppData\Local\Temp\*.*"
rd /s /q "%userprofile%\AppData\Local\Temp\"
cls
echo.
echo TEMP cleaned
echo.
echo Cleaned current users TEMP files
pause
