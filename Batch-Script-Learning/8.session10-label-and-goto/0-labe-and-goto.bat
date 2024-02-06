@echo off
rem => In a batch script, labels are used to mark the beginning of a code block that is the target of a GOTO instruction.
:: They can also be used for comments. A label is defined on a line by itself, 
::beginning with a colon and ending with either a space, a colon, or a CR/LF.
:: For example, :label , When the GOTO command is used, it directs the command processing
:: to a line that is identified by a label.
:: If the label is not found, the batch program stops and displays a "Label not found" message.
:: Here's an example of how a label is used in a batch script:
title Labels
:START
echo This is the start of the script
goto END

This is the hidden part of the script
so as you can see in this way also you can use label and goto, to write comments easily between your code

:END
echo This is the end of the script
pause
echo test after fisrt pause
pause
