:reset
@echo off
:: Go check the "varinfo.txt" to know what each variable do

:defaultsettings
::set txtcol=0f
set appn=BatcHelper
set appv=beta 0.4
set appm=g
goto :home

:customsettings
cls
echo CUSTOM SETTINGS IS NOT WORKING YET...
pause
goto :home

:home
cls
goto :%appm%home


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:ghome
color %txtcol%
title %appn% - home
echo --------------------------------------------------------
echo      %appn% - Guided mode
echo --------------------------------------------------------
echo v %appv%
echo.
echo Commands : 
echo Help - h
echo.
echo Modes :
echo Guided - gmod
echo Command - cmod

set /p input=
goto :%input%
pause
goto :home
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:chome
color %txtcol%
title %appn% - home
echo --------------------------------------------------------
echo      %appn% - Command mode
echo --------------------------------------------------------
echo v %appv%
echo.
echo Commands : 
echo Help - help
echo.
echo Modes :
echo Guided - gmod
echo Command - cmod

set /p input=
%input%
pause
goto :home
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:dhome
title %appn% %appv% - DEBUG MODE
echo  -----------
echo /DEBUG MODE/
echo -----------
echo.
echo %settingst%

set /p input=
%input%
pause
goto :home
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:debugmode
set appm=d
goto :home

:gmod
set appm=g
goto :home

:cmod
set appm=c
goto :home

:update
cls
echo YOUR VERSION [V%appv%] IS OBSELETE


:savesettings
cls
echo SAVE SETTINGS IS NOT WORKING YET...
pause
goto :home

:settings
cls
echo --------------------------------------------------------
echo      %appn% v%appv% - Settings
echo --------------------------------------------------------

:ph
start https://pornhub.com/