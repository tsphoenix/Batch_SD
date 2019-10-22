**WIP**
removes credentials, makes no backup copy

Resources:

https://support.microsoft.com/en-us/help/4026814/windows-accessing-credential-manager

https://blogs.technet.microsoft.com/rmilne/2019/01/11/script-to-clear-credman/

https://gallery.technet.microsoft.com/scriptcenter/Accessing-Windows-7210ae91

credentials_manager_cleaner_test snippets:

```batch
For /F "tokens=1,2 delims= " %G in ('cmdkey /list ^| findstr Target') do  cmdkey /delete %H
#
For /F "tokens=1,2 delims= " %%G in ('cmdkey /list ^| findstr Target') do  cmdkey /delete %%H
```
