Windows Management Instrumentation (WMI) Command-Line Utility (Wmic.exe)

C:\Windows\System32\wbem\WMIC.exe

https://support.microsoft.com/en-us/help/290216/a-description-of-the-windows-management-instrumentation-wmi-command-li

https://docs.microsoft.com/en-us/windows/win32/wmisdk/wmi-start-page

http://mnadobnik.pl/2013/03/windows-management-instrumentation-command-line/


Reading S.M.A.R.T. data in windows 10

cmd:

wmic diskdrive get status #just "OK", "Bad", "Caution" or "Unknown"

wmic diskdrive get /? #options

wmic

wmic:root\cli>diskdrive

wmic:root\cli>diskdrive get status

wmic diskdrive get MediaType, Model, Status, Name

wmic diskdrive get Description, FirmwareRevision, InterfaceType, MediaType, Model, Status, Name, PNPDeviceID

https://superuser.com/questions/1241303/how-to-get-cpu-temperature-on-windows-system-using-both-snmp-and-cmd

PsExec
https://docs.microsoft.com/en-us/sysinternals/downloads/psexec

https://www.howtogeek.com/school/sysinternals-pro/
https://www.howtogeek.com/school/sysinternals-pro/lesson8/

https://docs.microsoft.com/en-us/previous-versions/windows/desktop/vdswmi/chkdsk-method-in-class-win32-volume?redirectedfrom=MSDN

https://help.aternity.com/bundle/console_admin_guide_10x_server_local/page/console/topics/console_admin_coll_device_health_list.html

https://community.spiceworks.com/topic/1997976-how-do-you-remotely-use-command-prompt-on-another-computer

cmd:

PSExec \\$computer cmd /c defrag.exe

PSExec \\$computer cmd /c chkdsk.ex

https://www.winhelponline.com/blog/how-to-run-disk-defragmenter-on-a-remote-computer/


cmd:
PsExec -i -s \\<RemotePC> c:\windows\system32\defrag.exe c: -f

https://gallery.technet.microsoft.com/scriptcenter/Remote-Defragmentation-2146dcc8

batch:

for /f %%C in (C:\Temp\computers1.txt) do C:\pstools\psexec \\%%C -u DOMAIN\USERNAME -p PASSWORD defrag C:

openhardwaremonitor cli

https://github.com/openhardwaremonitor/openhardwaremonitor/issues/1079
