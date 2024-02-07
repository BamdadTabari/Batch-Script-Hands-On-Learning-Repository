@echo off
title taking input from user
:: command => set /p variablename=   Or  set /p variablename= some text
:: example set /p testvar=   Or  set /p testvar= hi, please enter some text
echo hi, please enter some text: 
set /p testvar1=   
echo testvar1 = %testvar1%
echo =====================
set /p testvar2= hi, please enter some text: 
echo testvar2 = %testvar2%
pause