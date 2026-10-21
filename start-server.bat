@echo off
chcp 65001 >nul
title FP&A Workbench Server
cd /d "%~dp0"
set PY="C:\Users\Administrator\.workbuddy\binaries\python\versions\3.13.12\python.exe"
if not exist %PY% set PY=python
echo.
echo  Starting local server on port 8765 ...
echo  Open on phone (same WiFi):  http://192.168.116.237:8765/
echo  If the PC IP changed, run:  ipconfig  and replace the address.
echo  Close this window to stop the server.
echo.
%PY% -m http.server 8765 --bind 0.0.0.0
pause
