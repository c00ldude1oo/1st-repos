@echo off
:start
ping localhost -n 2 > nul
if EXIST "C:\Users\Christopher\Desktop\new_game\path.gset" goto 1
cls
echo please open game_setup in setup to play
ping localhost -n 2 > nul
goto start
:1
ping localhost -n 2 > nul
cls
< READ_THIS.txt (
set /p 2=
set /p 1=
set /p 3=
set /p play=
)
ping localhost -n 2 > nul
if %play% == TURE goto 2
echo please read READ_THIS to play
ping localhost -n 2 > nul
goto 1
:2
< path.gset (
set /p path=
)
echo starting
ping localhost -n 2 > nul
strat "%path%\data\game.bat"