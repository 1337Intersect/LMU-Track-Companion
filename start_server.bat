@echo off
echo Starting LMU Track Learning Companion Server...
cd /d "%~dp0"
cd server
python lmu_websocket_server.py
pause