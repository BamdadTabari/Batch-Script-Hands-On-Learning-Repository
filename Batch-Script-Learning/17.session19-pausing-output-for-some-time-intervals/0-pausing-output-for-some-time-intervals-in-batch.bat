@echo off
title pausing-output-for-some-time-intervals
echo Enter Your Name
set /p name= The Name : 
echo loading...
:: for pausing-output-for-some-time-intervals we will ping the local host (127.0.0.1)
:: " -n 6 >nul " => between each ping is one second. "-n" used for number of pings. ">nul" => clear the output
ping 127.0.0.1 -n 6 >nul  
echo Welcome %name%
pause
