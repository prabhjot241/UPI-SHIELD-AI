@echo off
title UPI Shield AI Launcher
color 0b
echo ===================================================
echo             UPI SHIELD AI LAUNCHER
echo ===================================================
echo.
echo Starting backend server (FastAPI on port 8000)...
start "UPI Shield Backend" cmd /c "cd /d "%~dp0backend" && python -m uvicorn app.main:app --host 127.0.0.1 --port 8000"

timeout /t 2 /nobreak >nul

echo Starting frontend server (Vite on port 5180)...
start "UPI Shield Frontend" cmd /c "cd /d "%~dp0frontend" && npm run dev -- --host 127.0.0.1 --port 5180"

timeout /t 2 /nobreak >nul

echo Opening UPI Shield AI in your web browser...
start http://localhost:8000/

echo.
echo ===================================================
echo UPI Shield AI is now running!
echo App UI (FastAPI):  http://127.0.0.1:8000/
echo Vite Dev Server:   http://127.0.0.1:5180/
echo Interactive Docs:  http://127.0.0.1:8000/docs
echo ===================================================
echo Keep the backend and frontend command windows open.
echo.
pause
