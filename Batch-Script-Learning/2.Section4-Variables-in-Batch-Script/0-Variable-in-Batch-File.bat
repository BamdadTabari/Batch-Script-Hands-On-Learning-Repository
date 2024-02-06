@echo off
title variable
set /A a=5
set /A b=10
set /A c=%a%+%b%
echo %c%
set var=hello world
echo %var%
pause