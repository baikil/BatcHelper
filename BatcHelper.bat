:reset
@echo off
:: Go check the "varinfo.txt" to know what each variable do
set txtcol=0f
set appn=BatcHelper
set appv=0.92
set appm=g
goto :checkver

:customsettings
cls
echo THE CUSTOM SETTINGS ARE NOT WORKING YET...
pause
goto :checkver

:checkver
cls
title %appn% - Checking version
color e
echo Checking if the version is up to date
start checkver.bat
timeout 3 /nobreak
taskkill /F /FI "WindowTitle eq  checkver" /T
set /p version=<version.txt
if %appv% LSS %version% goto :update else goto :home

:uptodate
cls
title %appn% - Your version is up to date
color a
echo Your version [v%appv%] is up to date
timeout 3
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
echo.
echo Tip :
echo Write "h" before command to have more info about the command
echo ____________________________________________________________

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
echo version %version%
echo 
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

:update
cls
color c
echo Your version [v%appv%] is obselete
start update.bat
timeout 5
taskkill /F /FI "WindowTitle eq  update" /T
start BatcHelper.bat
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

:comlist
cls
echo To have more info about the commands, type h[command name]
echo ----------------------------------------------------------
echo reset
echo home
echo settings
echo plugin - download plugins
echo savesettings
echo comlist - command list (you are here)
echo gmod - Guided mode
echo cmod - Command mode
echo color - change the text color
echo mail - send an email
echo tts - Text to speach
echo int - Internet
pause
goto :home

:color
cls
echo Enter the color code (hcolor for the chart)
set /p input=
if %input%==hcolor goto :hcolor
set txtcol=%input%
goto  :home

:hcolor
cls
echo    0 = Black       8 = Gray
echo    1 = Blue        9 = Light Blue
echo    2 = Green       A = Light Green
echo    3 = Aqua        B = Light Aqua
echo    4 = Red         C = Light Red
echo    5 = Purple      D = Light Purple
echo    6 = Yellow      E = Light Yellow
echo    7 = White       F = Bright White
pause
goto :home

:mail
cls
title %appn% - Mail
if not exist mailplugin.bat goto :mailpni
start mailplugin.bat
exit
:mailpni
cls
echo The mail plugin is not installed
pause
goto :plugin

:plugin
title %appn% - Install plugins
cls
echo Enter the name of the plugin that you want to download
echo ------------------------------------------------------
echo mailplugin
echo ------------------------------------------------------
set /p input=
if %input%=mailplugin start 
pause
goto :home

:tts
title %appn% - Text to speach
cls
echo What do you want to say?
set /p input=
echo ' > "tts.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "tts.vbs"
echo speech.speak "%input%" >> "tts.vbs"
start tts.vbs
echo ----------------------------------------
echo Do you want to say something else? (y/n)
echo ----------------------------------------
set /p input=
if %input%==y goto :tts
goto :home

:int
cls
title %appn% - Internet
echo Write the domain name and extention (ex: youtube.com)
set /p input=
start Internet.bat %input%
:#default
title %appn% - 
cls
echo 
pause
goto :home