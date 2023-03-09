.\"Windows PowerShell.lnk" 
cd D:\terminal
powershell.exe Get-ExecutionPolicy -list
powershell.exe Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
powershell.exe .\setup.ps1