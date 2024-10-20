@echo off
setlocal

REM Set the target directory
set "targetDir=%CD%\resources"

REM Create the target directory if it doesn't exist
if not exist "%targetDir%" mkdir "%targetDir%"

REM Change to the target directory
cd "%targetDir%"

REM Download Master Script using curl
curl -o AHK-master-script.ahk -L "https://raw.githubusercontent.com/KuduVault/autohotkey/master/AHK-master-script.ahk"

REM Install AutoHotkey silently
call .\AutoHotkey_1.1.37.01_setup.exe /S

REM Copy AHK-master-script.ahk to the Startup folder
copy AHK-master-script.ahk "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

REM Run AutoHotkey script
start /MIN "" "C:\Program Files\AutoHotkey\AutoHotkey.exe" "%targetDir%\AHK-master-script.ahk"

REM Wait for a moment before exiting
timeout /nobreak /t 3 >nul

REM Open Image
completion.png

REM Go to Sarielnet
start "" http://pwn.sariel.net

REM Exit the script
exit /b 0