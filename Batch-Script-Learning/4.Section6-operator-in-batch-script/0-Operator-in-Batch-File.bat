@echo off
title (operators-in-batch-file) Calculator
:: List of Arithmetic Operators in Batch Script =>
::Addition: + (e.g., SET /A c = %a%+%b%)
::Subtraction: - (e.g., SET /A c = %a%-%b%)
::Multiplication: * (e.g., SET /A a *= 3)
::Division: / (e.g., SET /A a /= 3)
::Modulus: % (e.g., SET /A a = 5 % 3)
echo Welcome To Calculator
echo ======================
                   
echo Enter First Number
set /p firstnumber= First Number : 
               
echo Enter Second Number
set /p secondnumber= Second Number : 

set /a add=%firstnumber%+%secondnumber%
set /a sub=%firstnumber%-%secondnumber%
set /a ml=%firstnumber%*%secondnumber%
set /a div=%firstnumber%/%secondnumber%
:: Note : Important
set /a modulus=firstnumber%%secondnumber

echo Addition Result Is : %add%
echo Subtraction Result Is : %sub%
echo Multiplication Result Is : %ml%
echo Division Result Is : %div%
echo Modulus Result Is : %modulus%
pause