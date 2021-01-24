@echo off
setlocal enabledelayedexpansion
ECHO.-------------------------
ECHO.------Masoud Naji--------
ECHO.-------------------------
set /p Input=Enter the part of the Filename that you want to remove from all files in this directory:
set deletestring=%Input%
echo Ready to start
echo.
pause
echo.

for /f "delims==" %%F in ('dir /b ^| find "%deletestring%"') do (
   set oldfilename=%%F
   set newfilename=!oldfilename:%deletestring%=!
   Ren "!oldfilename!" "!newfilename!"

   )
echo.
echo All done
pause