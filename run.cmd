@echo off
set user=cisco
set password=password
rem Execute commands from a file
for /f %%i in (iplist.txt) do plink.exe %user%@%%i -pw %password% < commands.txt >%%i.log
rem Backup config
for /f %%i in (iplist.txt) do plink.exe %user%@%%i -pw %password% "sh run" >%%i.config
