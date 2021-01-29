@echo off
Title Download BatcHelper update
Set "url=https://raw.githubusercontent.com/baikil/BatcHelper/main/BatcHelper.bat"
for %%# in (%url%) do ( set "File=%tmp%\%%~n#.bat" )
Call :Download "%url%" "%File%"
If exist "%File%" ( 
    ( Type "%File%")>con
Rem to save the contents in new text file
( Type "%File%" > BatcHelper.bat)
)
Pause>nul & Exit
:Download <url> <File>
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('%1','%2')"
exit /b