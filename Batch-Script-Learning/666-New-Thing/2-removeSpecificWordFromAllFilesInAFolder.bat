@echo off
:: Disable command echoing to keep the output clean

setlocal enabledelayedexpansion
:: Enable delayed variable expansion to handle variables within loops correctly

set "folderPath=put folder full path here"
:: Set the folder path where the files are located. Replace 'put folder full path here' with the actual path.

set "wordToRemove=xyz"
:: Set the word to remove from file names. Replace 'xyz' with the word you want to remove.

for %%f in ("%folderPath%\*") do (
    :: Loop through each file in the specified folder
    set "fileName=%%~nxf"
    :: Get the file name without the path
    set "newName=!fileName:%wordToRemove%=!"
    :: Remove the specified word from the file name
    ren "%%f" "!newName!"
    :: Rename the file with the new name
)

endlocal
:: End the localization of environment changes in a batch file, restoring the environment to its state before setlocal was called.