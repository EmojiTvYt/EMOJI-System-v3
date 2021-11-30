@echo off
title EMOJI System
color 0E
if exist  ES_SystemFile.dll exist goto start
if not exist ES_SystemFile.dll goto error

:start
cls
color 0E
echo ----EMOJI System----
echo.
echo Click Any Key To Continue
pause >nul
goto menu

:error
cls
title Error
color 0C
start ErrorReportsES.vbs
echo Error
echo System File:
echo ES_SystemFile.dll
echo Is not in application folder
echo.
echo Without this file, program can't work
echo.
pause
exit

:menu
cls
title EMOJI System - Menu
color 0E
echo ----EMOJI System Menu----
echo.
echo -------System Files------
echo [ 1 ] Scan System Files
echo [ 2 ] System File Preview
echo -----------App-----------
echo [ 3 ] App Info
echo [ 4 ] Preview App Fps
echo [ 5 ] Exit
echo ---------Computer--------
echo [ 6 ] Calculator
echo [ 7 ] Notes
echo [ 8 ] Cmd
echo [ 9 ] Shutdown
echo ----------Tasks----------
echo [ 10 ] Show Task List
echo [ 11 ] Show CMD Commands List
echo [ 12 ] New Task
echo [ 13 ] Taskkill - 1 Task
echo.
set /p "wybieram=Option: "
if %wybieram%==1 goto scan
if %wybieram%==2 goto podglad
if %wybieram%==3 goto info
if %wybieram%==4 goto pap
if %wybieram%==5 exit
if %wybieram%==6 goto calc
if %wybieram%==7 goto notepad
if %wybieram%==8 goto wierszyk
if %wybieram%==9 goto shdn
if %wybieram%==10 goto lista
if %wybieram%==11 goto listacmd
if %wybieram%==12 goto newtsk
if %wybieram%==13 goto taskkill
if %wybieram%==2137 goto papierzowa

:shdn
cls
title Shutdown
echo Are you sure?
echo.
set /p "wbieram={y/n}: "
if %wybieram%==y goto shdnn
if %wybieram%==n goto menu

:shdnn
cls
echo Shutdown...
shutdown -s -t 10 -c Computer Will Shutdown in 10 Seconds by Aplication: EMOJI System
ping localhost -n 1 >nul
cls
echo Retrun to menu...
ping localhost -n 3 >nul
cls
goto menu

:youtube
cls
title EMOJI System - YouTube
echo YouTube Opened
start www.youtube.com
ping localhost -n 1 >nul
cls
echo Retrun to menu...
ping localhost -n 3 >nul
cls
goto menu

:explolaltor
cls
title EMOJI System - Explorer
echo Explorer Actived
start explorer.exe
ping localhost -n 1 >nul
cls
echo Retrun to menu...
ping localhost -n 3 >nul
cls
goto menu

:taskkill
cls
title EMOJI System - Taskkill
echo.
echo Enter Proces Name With Enlargement
echo.
set/p kill=Proces:
if %kill%==explorer.exe goto nope
if %kill%==cmd.exe goto nope
if %kill%==svchost.exe goto nope
if %kill%==conhost.exe goto nope
if %kill%==RuntimeBroker.exe goto nope
if %kill%==slui.exe goto nope
if %kill%==tasklist.exe goto nope
taskkill /f /im %kill%
cls
echo Killed/Closed Proces: %kill%
echo.
pause
goto menu

:nope
cls
title Unaccepted Option
color 0C
echo Sorry, but you was trying to stop
echo a computer system files.
echo.
echo Please, DO NOT try stop system files.
echo.
pause
goto menu

:newtsk
cls
title EMOJI System - New Task
echo.
echo Enter Proces Name With Enlargement
echo.
set/p start=Proces:
start %start%
goto menu

:listacmd
cls
title EMOJI System - Cmd Commands
help
echo.
echo CMD Command List
echo.
pause
goto menu

:lista
cls
title EMOJI System - Proces List
tasklist
echo.
echo ______________
echo --Tasks List--
echo.
pause
goto menu

:wierszyk
cls
title EMOJI System - Cmd
echo Cmd Actived
start cmd.exe
ping localhost -n 1 >nul
cls
echo Retrun to menu...
ping localhost -n 3 >nul
cls
goto menu

:calc
cls
title EMOJI System - Calculator
echo Calculator Actived
call kalkulatorek.bat
ping localhost -n 1 >nul
cls
echo Retrun to menu...
ping localhost -n 3 >nul
cls
goto menu

:notepad
cls
title EMOJI System - Notepad
echo Notes Actived
call notes.bat
ping localhost -n 1 >nul
cls
echo Retrun to menu...
ping localhost -n 3 >nul
cls
goto menu

:pap
cls
title EMOJI System - Fps
echo App Fps: %random:~1,4%
echo.
pause
goto menu

:back
cls
goto menu

:scan
cls
color 09
title EMOJI System - Scan
echo Scan Started.
sfc /scannow
echo.
echo.
echo Scan Ended :D
echo.
pause
goto menu

:podglad
cls
title EMOJI System - System File Preview
color 0A
echo System Files Preview: Starting...
ping localhost -n 3 >nul
cls
echo.
echo.
dir/s
echo.
echo.
echo System FiLes Preview
echo.
pause
goto menu

:info
cls
title EMOJI System - Info
color 0B
echo ----EMOJI System Info----
echo.
echo EMOJI Industries
echo.
echo Creators
echo -EMOJI TV YT
echo -CHCE 1 MILLION
echo.
echo notes.bat - CHCE 1 MILLION
echo kalkulatorek.bat - CHCE 1 MILLION
echo Task Manager Script - CHCE 1 MILLION
echo Updates - EMOJI TV YT
echo Error Reports System - EMOJI TV YT
echo Application Script - EMOJI TV YT
echo Application Files - EMOJI TV YT
echo.
echo.
echo EMOJI System is NOT a Operating system. (Yet.)
echo EMOJI System is just a Help for user and computer
echo.
echo DO NOT ADD EMOJI SYSTEM TO YOUR COMPUTER SYSTEM FILES
echo.
echo App Version: v3 Script And Files Update
echo.
pause
goto menu