:reset
@echo off
:: Go check the "varinfo.txt" to know what each variable do

:defaultsettings
::set txtcol=0f
set appn=BatcHelper
set appv=beta 0.5
set appm=g
goto :home

:customsettings
cls
echo THE CUSTOM SETTINGS ARE NOT WORKING YET...
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
echo Command list - comlist
echo.
echo Modes :
echo Guided - gmod
echo Command - cmod
echo ______________________________________________________

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
echo cmd - help
echo goto :comlist
echo.
echo Modes :
echo Guided - gmod
echo Command - cmod
echo.
echo Tip :
echo Write "goto :" before using a "Guided mode" command
echo ______________________________________________________

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
echo appn %appn%
echo appv %appv%
echo txtcol %txtcol%
echo settingst %settingst%
echo input %input%
echo ______________________________________________________
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

:oldver
cls
color c
echo YOUR VERSION [V%appv%] IS OBSELETE
start https://github.com/baikil/BatcHelper.git
pause
exit

:savesettings
cls
echo THE SAVE SETTINGS FEATURE IS NOT WORKING YET...
pause
goto :home

:settings
cls
echo --------------------------------------------------------
echo      %appn% v%appv% - Settings
echo --------------------------------------------------------
pause
goto :home

:web
cls
echo Enter the domain name (ex: youtube)
set /p input=
start https://%input%.com
pause
goto :home

:comlist
cls
echo To have more info about the commands, type h[command name]
echo ----------------------------------------------------------
echo reset
echo home
echo settings
echo web
echo savesettings
echo comlist
echo gmod
echo cmod
echo 
pause
goto :home