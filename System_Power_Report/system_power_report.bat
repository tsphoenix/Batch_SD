@echo off
title System Power Report

powercfg /sleepstudy /output "%UserProfile%\Desktop\sleepstudy_report.html"

echo.
echo sleepstudy_report.html file created on the Desktop
echo.
pause
