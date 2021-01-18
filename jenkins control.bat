@ECHO off
cls
:start
ECHO.-------------------------
ECHO.------Masoud Naji--------
ECHO.-------------------------
ECHO.-------------------------
ECHO 1. Jenkins Start
ECHO.-------------------------
ECHO 2. Jenkins Stop
ECHO.-------------------------
ECHO 3. Jenkins Restart
ECHO.-------------------------
set choice=
set /p choice=Type the number to print text.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto Jenkins_Start
if '%choice%'=='2' goto Jenkins_Stop
if '%choice%'=='3' goto Jenkins_Restart
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:Jenkins_Start
jenkins.exe start
goto end
:Jenkins_Stop
jenkins.exe stop
goto end
:Jenkins_Restart
jenkins.exe restart
goto end
:end
pause




