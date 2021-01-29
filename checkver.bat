@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min 
title checkver
set "url=https://raw.githubusercontent.com/baikil/BatcHelper/main/version.txt"
for %%# in (%url%) do ( set "File=%tmp%\%%~n#.txt" )
Call :Download "%url%" "%File%"
If exist "%File%" ( 
    ( Type "%File%")>con
Rem to save the contents in new text file
( Type "%File%" > version.txt)
)
Pause>nul & Exit
:Download <url> <File>
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('%1','%2')"
exit /b