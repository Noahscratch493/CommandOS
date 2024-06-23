@echo off
color 0a
title CommandOS ver= 1.0

echo Finding Kernel.........
echo Kernel Found! Booting CommandOS
pause

cls            
echo What is your name?
set /p name=
echo.
cls
echo HELLO! %name%
echo.
pause

:menu
cls
echo What Would You Like To Do? Type the number.
echo.
echo 1. System Info 
echo 2. Calculator 
echo 3. Clock 
echo 4. Calendar 
echo 5. Songs 
echo 6. Antivirus

set /p input=
if %input% == 1 goto info
if %input% == 2 goto calc 
if %input% == 3 goto clock
if %input% == 4 goto calendar
if %input% == 5 goto songs
if %input% == 6 goto antivirus

:info
cls
echo.=======================
echo      CommandOS
echo.=======================
echo      SYSTEM INFO  
echo.
echo      VERSION = 1.0
echo.     
echo      RAM = 8GB
echo.
echo      PROCESSOR = CommandCore Lite
echo.
echo      STORAGE = 500GB HDD     
echo.   
echo      OPERATING SYSTEM = CommandOS
echo.  
echo      Kernel ver = 1.0
echo.  
echo      Build = 1
echo.
echo.========================
echo      Copyright (c) CommandOS Inc.
echo.========================
echo.
echo Wanna check for update?

echo  1. Check for update 
echo  2. Menu

set /p check= 

if %check% == 1 goto update
if %check% == 2 goto menu

:update 
cls
echo Checking for new version/Update.............
echo.
pause
cls
echo.
echo No update available. Try again later.
echo.
pause
goto menu

:calc
cls
echo CALCULATOR
echo.
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=%num1% + %num2%
echo.
echo Result: %result%
echo.
pause

start calc.exe  ; Opens Windows Calculator

goto menu  ; Returns to the main menu

:clock
cls
echo CLOCK
echo.
echo Current time: 
time /t
echo.
pause
goto menu

:calendar
cls
echo CALENDAR
echo.
echo Current date: 
date /t
echo.
pause
goto menu

:songs
cls
echo SONGS
echo.
echo Sorry, this feature is not available in CommandOS.
echo.
pause
goto menu

:antivirus
cls
echo ANTIVIRUS
echo.
echo Scanning system for viruses...
echo.
echo No viruses found. System clean.
echo.
pause
goto menu
