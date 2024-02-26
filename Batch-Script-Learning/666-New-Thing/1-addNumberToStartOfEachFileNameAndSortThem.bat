@echo off
:: Disable command echoing to keep the output clean

setlocal enabledelayedexpansion
:: Enable delayed variable expansion to handle variables within loops correctly

set "folderPath=put folder full path here"
:: Set the folder path where the files are located. Replace 'put folder full path here' with the actual path.

set /a counter=1
:: Initialize a counter variable to  1. This will be used to prefix each file name.
:: note   The `/a` switch in a batch script is used with the `set` command to perform arithmetic operations. 
:: It allows you to perform calculations and assign the result to a variable. 
:: This is particularly useful for incrementing counters, performing simple arithmetic operations, 
:: or any other numerical calculations within your batch scripts.

for %%f in ("%folderPath%\*") do (
    :: Loop through each file in the specified folder
    set "newName=!counter!-%%~nxf"
    :: Construct the new file name by prefixing the counter value and the original file name
    ren "%%f" "!newName!"
    :: Rename the file with the new name
    set /a counter+=1
    :: Increment the counter for the next file
)

endlocal
:: End the localization of environment changes in a batch file, restoring the environment to its state before setlocal was called.