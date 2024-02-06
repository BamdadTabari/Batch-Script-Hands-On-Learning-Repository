@echo off
title If Statement
set myvar=hello
:: if structure => if condition DoSomthing => example:
if %myvar%==hello echo yes
if %myvar%==helloworld echo yes
:: if-else structure => if condition (DoSomthing) else (DoAnotherThing) => example:
if %myvar%==helloworld (echo yes) else (echo no)
pause