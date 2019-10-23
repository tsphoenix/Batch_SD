Resources:

https://stackoverflow.com/questions/19335004/how-to-run-a-powershell-script-from-a-batch-file

https://stackoverflow.com/questions/6605039/running-a-ps1-script-using-a-batch-file-bat

https://gist.github.com/BenMcLean/7d593af547cd168fe02a266d317d4005

https://superuser.com/questions/1050193/executing-a-powershell-script-through-batch-file

https://social.technet.microsoft.com/Forums/ie/en-US/e20ddf85-26ba-45a7-a987-89de076eda23/solved-run-program-as-different-user-through-batch-file?forum=ITCG

https://stackoverflow.com/questions/14639743/batch-script-to-run-as-administrator


Powershell code in Batch:

https://gerrywilliams.net/2017/12/ps-create-batch-launcher-files/

https://stackoverflow.com/questions/28989750/running-powershell-as-another-user-and-launching-a-script

https://social.technet.microsoft.com/Forums/windows/en-US/0b664894-b740-4529-ac7f-e8d4f511f2d7/how-to-runas-powershell-script?forum=winserverDS

https://www.howtogeek.com/204088/how-to-use-a-batch-file-to-make-powershell-scripts-easier-to-run/

https://superuser.com/questions/1098072/run-ps1-with-admin-privileges-and-unrestricted-policies-from-a-batch-file

https://stackoverflow.com/questions/21641100/from-powershell-how-do-you-launch-an-executable-in-administrator-mode-under-a-d

https://stackoverflow.com/questions/30523948/switch-parameters-and-powershell-exe-file-parameter

old launcher snippets:

```batch
#
@ECHO OFF
PowerShell.exe -NoProfile -Command "& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dpn0.ps1""' -Verb RunAs}"
PAUSE
#
fixed
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Unrestricted','-File %~dpn0.ps1' -Verb RunAs"
#
PowerShell.exe -Command "& {Start-Process PowerShell.exe -ArgumentList '-ExecutionPolicy Bypass -File ""%~dpn0.ps1""' -Verb RunAs}"
#
```
old launcher snippets:
```powershell
PowerShell.exe -Command "& {Start-Process PowerShell.exe -ArgumentList '-ExecutionPolicy Bypass -File ""%~dpn0.ps1""' -Verb RunAs}"
#
start powershell -credential ""
#
Start-Process powershell.exe -Credential $Credential -Verb RunAs -ArgumentList ("-file $args")
#
Start-Process powershell.exe -credential $cred -verb runas
#
```
