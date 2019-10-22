@echo off
title System_Power_Report_Run_as_administrator

powercfg /batteryreport /sleepstudy /energy /output "%UserProfile%\Desktop\system_power_report.html"

echo.
echo system_power_report.html  file created on the Desktop
echo.
pause
