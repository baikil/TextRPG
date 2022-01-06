@echo off
:ini
title TextRPG ^| Loading...
set "txtrpgdir=%public%\textrpg"
set "_cd=%cd%"
call :logo
call :audio %txtrpgdir%\music.mp3
:00
set page=0
cls&%logo%
echo.
echo 1. New game
echo 2. Settings
echo 3. Exit
choice /c 123 /n
goto :0%errorlevel%
:01
cls
echo Feature not added yet...
echo.
pause
goto :00
:02
cls
echo Feature not added yet...
echo.
pause
goto :00
:03
goto :exit
:exit
taskkill /im wmplayer.exe /f
exit
:audio
echo CreateObject("Wscript.Shell").Run "wmplayer /play /close ""%1""", 0, False > audio.vbs
ping -n 2 127.0.0.1>nul
start audio.vbs
exit /b
:logo
::https://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=Text%20RPG::
set "logo1=echo [38;5;84m████████╗███████╗██╗  ██╗████████╗    ██████╗ ██████╗  ██████╗ [0m"
set "logo2=echo [38;5;84m╚══██╔══╝██╔════╝╚██╗██╔╝╚══██╔══╝    ██╔══██╗██╔══██╗██╔════╝ [0m"
set "logo3=echo [38;5;84m   ██║   █████╗   ╚███╔╝    ██║       ██████╔╝██████╔╝██║  ███╗[0m"
set "logo4=echo [38;5;84m   ██║   ██╔══╝   ██╔██╗    ██║       ██╔══██╗██╔═══╝ ██║   ██║[0m"
set "logo5=echo [38;5;84m   ██║   ███████╗██╔╝ ██╗   ██║       ██║  ██║██║     ╚██████╔╝[0m"
set "logo6=echo [38;5;84m   ╚═╝   ╚══════╝╚═╝  ╚═╝   ╚═╝       ╚═╝  ╚═╝╚═╝      ╚═════╝ [0m"
set "logo7=echo [38;5;8mTextRPG v0.0[0m"
set "logo=cls&%logo1%&%logo2%&%logo3%&%logo4%&%logo5%&%logo6%&%logo7%"
exit /b