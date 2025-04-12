@echo off
echo Checking remote process...
tasklist /S 192.168.1.10 /U Admin /P *
pause
