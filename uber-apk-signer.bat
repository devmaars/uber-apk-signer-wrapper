@echo off
setlocal

rem Path to your Uber APK Signer jar file
for %%I in ("%~dp0") do (
    set "ScriptDirectory=%%~fI"
)
set "ExecutableName=%~nx0"
set "UberSignerJar=%ScriptDirectory%\uber-apk-signer.jar"

rem Function to check if Java is installed
:CheckJava
where java >nul 2>&1
if errorlevel 1 (
    echo Java is not installed. Please install Java to use this script.
    exit /b 1
)

rem Function to check if Uber APK Signer jar exists
:CheckUberSigner
if not exist "%UberSignerJar%" (
    echo Uber APK Signer jar file not found. Please provide the correct path.
    exit /b 1
)

rem Main function to sign the APK
:SignAPK
call :CheckJava
call :CheckUberSigner

rem Run Uber APK Signer
java -jar "%UberSignerJar%" %*

rem Check if any arguments are passed
if "%~1"=="" (
    echo Usage: %ExecutableName% <options>
    echo Example: %ExecutableName% -a myApp.apk
    exit /b 1
)

rem Call the main function with passed arguments
call :SignAPK %*
