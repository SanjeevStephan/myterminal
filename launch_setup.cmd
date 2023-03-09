@echo off
cd D:\terminal
ECHO "Changed Directory to D:\terminal"
REM Enabling RemoteSigned for LocalMachine
ECHO "Enabling RemoteSigned for LocalMachine"
powershell.exe Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
ECHO "ExecutionPolicy set for LocalMachine"
powershell.exe Get-ExecutionPolicy -Scope LocalMachine
ECHO "Launching PowerShell Setup Script"
powershell.exe ".\setup.ps1"