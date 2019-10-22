@echo off
title Power_Efficiency_Diagnostics_Report_Run_as_administrator

powercfg /energy /output "%UserProfile%\Desktop\power_efficiency_diagnostics_report.html"

echo.
echo power_efficiency_diagnostics_report.html file created on the Desktop
echo.
pause
