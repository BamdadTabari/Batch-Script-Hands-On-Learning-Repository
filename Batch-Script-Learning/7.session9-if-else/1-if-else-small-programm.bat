@echo off
title check user
echo Enter Your Name
set /p username= Your Name :

if  %username%==bamdad (echo welcome bamdad) else (echo you are not authorized) 
pause