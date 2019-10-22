@echo off
title System_Power_Report

powercfg /sleepstudy /output "%UserProfile%\Desktop\sleepstudy_report.html"

echo.
echo sleepstudy_report.html file created on the Desktop
echo.
pause
