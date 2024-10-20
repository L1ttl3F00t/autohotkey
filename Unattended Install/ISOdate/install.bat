@echo off
setlocal

REM Define the AutoHotkey installation path and script path
set "ahkPath=C:\Program Files\AutoHotkey\AutoHotkey.exe"
set "scriptPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\ISOdate.ahk"

REM Check if AutoHotkey is already installed
if exist "%ahkPath%" (
    echo AutoHotkey is already installed.
) else (
    REM Install AutoHotkey silently if not installed
    call .\AutoHotkey_1.1.37.01_setup.exe /S
    echo AutoHotkey has been installed.
)

REM Check if the script already exists in the Startup folder
if exist "%scriptPath%" (
    echo The AutoHotkey master script is already set up in the Startup folder.
) else (
    REM Set the target directory for downloading the script
    set "targetDir=%CD%\resources"

    REM Create the target directory if it doesn't exist
    if not exist "%targetDir%" mkdir "%targetDir%"

    REM Change to the target directory
    cd "%targetDir%"

    REM Download Master Script using curl
    curl -o AHK-master-script.ahk -L "https://raw.githubusercontent.com/L1ttl3F00t/autohotkey/master/ISOdate.ahk"

    REM Copy AHK-master-script.ahk to the Startup folder
    copy AHK-master-script.ahk "%scriptPath%"
    echo AutoHotkey master script has been set up in the Startup folder.

    REM Run AutoHotkey script
    start /MIN "" "%ahkPath%" "%scriptPath%"
    echo AutoHotkey master script is now running.
)

REM Wait for a moment before exiting
timeout /nobreak /t 3 >nul

REM Exit the script
exit /b 0
