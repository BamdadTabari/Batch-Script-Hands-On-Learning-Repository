@echo off
title extracting-values-from-registry

:: Command : reg query NameOfKey
:: REG QUERY /?  => this will show help for this command
REG QUERY HKEY_CURRENT_USER
pause