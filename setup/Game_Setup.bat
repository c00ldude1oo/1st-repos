@echo off
:start
title Setup step 1/10
echo      WELCOME TO THE WIZERD SETUP.
echo.
echo  Step 1 OF 10
echo.
echo please enter the file path to this game folder.
echo expl C:Users\Username\filename\new_game
set /p path1=C:Users\
set path=C:\Users\%path1%
cls
echo Is this the correct file path?  %path%
:iftp
set /p ifpt=yes/no:
if %ifpt% == yes goto yes
if %ifpt% == no goto no
goto iftp
:no
goto start
:yes

(
echo %path%
) >%path%\path.gset
cls
if EXIST "%path%\path.gset" goto next1

:next1
cls
title Setup step 2/10
pause









