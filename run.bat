@echo off
setlocal

echo ========================================
echo   Locker Management System - Starter
echo ========================================

:: Check if Java is installed
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Java is not found. Please install JDK and add it to your PATH.
    pause
    exit /b 1
)

:: Create bin directory if it doesn't exist
if not exist "bin" mkdir bin

echo [1/2] Compiling project...
javac -d bin src/locker/*.java
if %errorlevel% neq 0 (
    echo [ERROR] Compilation failed.
    pause
    exit /b 1
)

:: Ensure background image is in the classpath
if exist "src/bg.png" (
    copy /Y "src/bg.png" "bin/bg.png" >nul
) else if exist "resources/bg.png" (
    copy /Y "resources/bg.png" "bin/bg.png" >nul
)

echo [2/2] Launching LMS Dashboard...
echo.
java -cp bin locker.Main

if %errorlevel% neq 0 (
    echo.
    echo [NOTE] The program closed with an error or was interrupted.
    pause
)

endlocal
