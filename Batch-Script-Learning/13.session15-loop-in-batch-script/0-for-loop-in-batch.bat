@echo off
title for loop
:: for %%varname in list do DoSomthing / note: varname must be only one character like: x or y or z or ...
for %%y in (1,5,15) do echo %%y
:: also we can see this is the way of define list in batch => (x,y,z, ...)
pause
