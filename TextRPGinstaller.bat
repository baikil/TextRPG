@echo off
title TextRPG installer
echo.
echo Installing TextRPG ...
echo.
set "txtrpgdir=%public%\textrpg"
set "url=https://github.com/baikil/TextRPG/raw/main/music.mp3"&set "file=%txtrpgdir%\music.mp3"&call :dl
set "url=https://raw.githubusercontent.com/baikil/TextRPG/main/TextRPG.bat"&set "file=%txtrpgdir%\TextRPG.bat"&call :dl
start %txtrpgdir%\TextRPG.bat
exit
:dl
powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('%url%','%file%')"
exit /b