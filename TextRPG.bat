@echo off
:ini
title TextRPG ^| Loading...
set "txtrpgdir=%public%\textrpg"
call :audio %txtrpgdir%\music.mp3
echo Press any key to exit this epic demo
pause >nul
taskkill /im wmplayer.exe /f
exit
:audio
echo CreateObject("Wscript.Shell").Run "wmplayer /play /close ""%1""", 0, False > audio.vbs
ping -n 2 127.0.0.1>nul
start audio.vbs
exit /b