@echo off
title WritingIntoFiles
echo Enter Your Name
set /p thename=Enter : 
:: this will overwrite the data in file every time
:: echo Welcome %thename% >detail.txt
:: this will Append the data in file every time
echo Welcome %thename% >>detail.txt
pause