@echo off
title closing-batch-script

:: Command : exit

REG QUERY HKEY_CURRENT_USER
pause
goto closeit
:closeit
exit