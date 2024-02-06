@echo off
title for loop
:: for /l %%varname in list do DoSomthing / note: varname must be only one character like: x or y or z or ...
for /l %%y in (1,5,150) do echo %%y
:: also we can see this how to define range in batch => (start,step,end) but just when there is "/l" in loop
pause
