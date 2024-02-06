@echo off
title Kill A Process Using Batch Script

:: Command : taskkill /im processname /f
:: Example : taskkill /im notepad.exe /f
::Where : /f is for force

taskkill /im notepad.exe /f
pause