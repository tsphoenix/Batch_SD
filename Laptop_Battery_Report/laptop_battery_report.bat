@echo off
title laptop_battery_report

powercfg /batteryreport /output "%UserProfile%\Desktop\battery_report.html"

echo.
echo battery_report.html file created on the Desktop
echo.
pause
