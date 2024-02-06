@echo off
title ping command
:: google.com ipaddress = 216.239.38.120
echo Enter IPAddress
set /p address= IPAddress : 
ping %address%
pause
