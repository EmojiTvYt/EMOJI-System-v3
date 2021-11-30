@echo off
title calculator
color 0E
:main
echo.
echo ---------------------------
echo.
echo Welcome %USERNAME%!
echo.
echo Calulator Ver 0.2
echo.
echo ---------------------------
echo.
echo Select an Option
echo.
echo 1) Addition
echo 2) Subtraction
echo 3) Divison
echo 4) Multipication
echo 5) Exit
echo.
set /p "do=Option: "
if %do%==1 goto add
if %do%==2 goto sub
if %do%==3 goto div
if %do%==4 goto mul
if %do%==5 call EMOJI_System_v3.bat
echo.
cls
echo Invalid value = %do%
echo.
pause
cls
goto main

:add
cls
echo ADDITON
echo.
set /p no1="num1. "
echo       +
set /p no2="num2. "
set /a sum=no1+no2
echo ------------
echo %sum%
echo.
pause
cls
goto main


:sub
cls
echo SUBTACTION
echo.
set /p no1="num1. "
echo       -
set /p no2="num2. "
set /a sum=no1-no2
echo ------------
echo %sum%
echo.
pause
cls
goto main


:div
cls
echo DIVISON
echo.
set /p no1="num1. "
echo       /
set /p no2="num2. "
set /a sum=no1/no2
echo ------------
echo %sum%
echo.
pause
cls
goto main


:mul
cls
echo MULTIPLICATION
echo.
set /p no1="num1. "
echo       *
set /p no2="num2. "
set /a sum=no1*no2
echo ------------
echo %sum%
echo.
pause
cls
goto main

