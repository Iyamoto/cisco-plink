@echo off
set user=cisco
set password=password
for /f %%i in (iplist.txt) do plink.exe %user%@%%i -pw %password% < commands.txt >%%i.log
