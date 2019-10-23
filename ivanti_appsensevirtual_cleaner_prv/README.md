ivanti_appsensevirtual_cleaner_prv_test.bat
```batch
@echo off
title ivanti_appsensevirtual_cleaner_prv_test

del /f /s /q "C:\appsensevirtual\"
rd /s /q "C:\appsensevirtual\"

cls
echo.
echo C:\appsensevirtual\ cleared
echo.
pause
```
notes:
* not sure if it will delete appsensevirtual folder with prv or just it's content, to be tested
* not sure if C:\appsensevirtual\ will be automaticaly recreated by ivanti services
* stop ivanti services to be able to delete all subfolders
