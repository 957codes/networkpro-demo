@echo off
REM Network Pro Demo Launcher for Windows
echo Starting Network Pro Demo...
echo.
echo The app will open in your browser at http://localhost:3000?demo=true
echo Press Ctrl+C to stop the server.
echo.

where npx >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Node.js is required. Download it from https://nodejs.org
    pause
    exit /b 1
)

start "" "http://localhost:3000?demo=true"
npx serve . -l 3000
