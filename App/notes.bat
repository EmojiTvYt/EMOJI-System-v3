@echo off
color 0a
set name=United
title %name% - Notepads
:options
cls
echo ________________________________________
echo.
echo             	Notepad
echo ________________________________________
echo - %name%
echo.
echo Press 0 to edit a document that already exists.
echo Press 1 to edit the name of your document.
echo Press 2 to edit the contents of your document.
echo Press 3 for help.
echo Press 4 to exit.

set /p you=">"
if %you%==1 goto 1
if %you%==2 goto 2
if %you%==3 goto help
if %you%==4 goto 4
if %you%==0 goto 0

cls
echo *********************************
echo sorry invalid number!
echo *********************************
ping localhost -n 2 >nul
goto options

:1
cls
echo ________________________________________
echo.
echo            	Notepad
echo ________________________________________
echo - %name%
echo. 
echo Name Your Document .. eg. 'hello.txt' or 'hello.bat'
set /p name=">"
title %name% - Notepad

goto options

:2
cls
echo ________________________________________
echo.
echo             iRule Notepad
echo ________________________________________
echo - %name%
echo. 
echo To add another line to your text press enter .. To stop editing,
echo  write "Q" to Exit
echo.
echo Cannot use symbols:"   > < |   " lol if you use any of them 3 symbols it closes!
echo.
set /p content=">"
if %content%==q goto back
if %content%==Q goto back
echo %content%>>%name%
cls
echo Save Successful!
ping localhost -n 2 >nul
goto 2

:help
cls
echo ________________________________________
echo.
echo             	Notepad
echo ________________________________________
echo - %name%
echo. 
echo ?
echo.
pause
goto options

:4
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ________________________________________
echo.
echo             	Notepad
echo ________________________________________
echo     Bye!
ping localhost -n 5 >nul
call EMOJI_System_v3.bat

:0
cls
echo ________________________________________
echo.
echo                Notepad
echo ________________________________________
echo - %name%
echo. 
echo Type in the name eg. 'hello.txt' or 'hello.bat'
echo The file has to be in the same directory as my notpad!
set /p edit=">"
edit %edit%
goto options

:back
start EMOJI_System_v2.3.bat
exit