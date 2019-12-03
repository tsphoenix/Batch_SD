"Windows Search" == WSearch == SearchIndexer.exe

net start "Windows Search"

net stop "Windows Search"

sc start "Windows Search"

sc stop "Windows Search"

sc config "Windows Search" start=auto

sc config "Windows Search" start=delayed-auto

sc config "Windows Search" start=demand

sc config "Windows Search" start=disabled


Resources:

https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/cc742126(v%3Dws.11)

https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/cc742107(v%3Dws.11)

https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/sc-config

https://www.tenforums.com/tutorials/4499-start-stop-disable-services-windows-10-a.html

https://www.thewindowsclub.com/searchindexer-exe-high-cpu-usage

https://www.howtogeek.com/howto/28450/what-is-searchindexer.exe-and-why-is-it-running/
