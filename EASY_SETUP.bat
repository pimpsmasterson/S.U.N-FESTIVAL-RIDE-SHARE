@echo off
title S.U.N. Festival Website - Easy Setup
color 0A
echo.
echo ========================================
echo    S.U.N. FESTIVAL WEBSITE SETUP
echo ========================================
echo.
echo This will automatically set up and run your website.
echo Please wait while we prepare everything...
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed on your computer.
    echo.
    echo Please download and install Node.js from: https://nodejs.org
    echo Choose the "LTS" version (recommended for most users)
    echo.
    echo After installing Node.js, run this file again.
    echo.
    pause
    exit /b 1
)

echo ✓ Node.js is installed
echo.

REM Install dependencies for main project
echo Installing main project dependencies...
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install main dependencies
    pause
    exit /b 1
)
echo ✓ Main dependencies installed
echo.

REM Install dependencies for client
echo Installing website dependencies...
cd client
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install website dependencies
    pause
    exit /b 1
)
echo ✓ Website dependencies installed
echo.

REM Install dependencies for server
echo Installing server dependencies...
cd ..\server
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install server dependencies
    pause
    exit /b 1
)
echo ✓ Server dependencies installed
echo.

cd ..

echo ========================================
echo     SETUP COMPLETE! STARTING WEBSITE...
echo ========================================
echo.
echo The website will open in your browser automatically.
echo.
echo IMPORTANT NOTES:
echo - Keep this window open while using the website
echo - The website will be available at: http://localhost:3000
echo - To stop the website, close this window or press Ctrl+C
echo.
echo Starting in 3 seconds...
timeout /t 3 /nobreak >nul

REM Start the development server
cd client
echo Starting S.U.N. Festival website...
echo.
start "" http://localhost:3000
call npm start 