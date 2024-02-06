@echo off
:: exist command will check a file is exist or not
:: sample=> if exist "filename.extension" echo yes is exist
title check files

if exist "testforExistCOmmand.exe" (echo yes is exist) else (echo is not exist) 
:: also if you want to check files from another folders
if exist "D:\1-work-space\666-UdemyLearn\0-Batch Script (CMD)\10.session12-files-in-batch-script\test-file-folder\ExistCommand.exe" (echo yes is exist) else (echo is not exist) 
pause