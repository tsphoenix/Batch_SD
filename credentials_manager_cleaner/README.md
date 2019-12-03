**FINISHED**

removes credentials, makes no backup copy

Resources:

https://support.microsoft.com/en-us/help/4026814/windows-accessing-credential-manager

https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/cmdkey

https://ss64.com/nt/for_cmd.html

https://ss64.com/nt/for_f.html

https://blogs.technet.microsoft.com/rmilne/2019/01/11/script-to-clear-credman/

https://gallery.technet.microsoft.com/scriptcenter/Accessing-Windows-7210ae91

credentials_manager_cleaner snippets:

```batch
#for cmd
For /F "tokens=1,2 delims= " %G in ('cmdkey /list ^| findstr Target') do  cmdkey /delete %H
#for batch file
For /F "tokens=1,2 delims= " %%G in ('cmdkey /list ^| findstr Target') do  cmdkey /delete %%H
```
tokens=1,2,3
1 Windows Credentials
2 Certificate-Based Credentials
3 Generic Credentials
