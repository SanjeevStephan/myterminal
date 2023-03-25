. .\setup_filesdir.ps1

cat D:\terminal\setup_figlet\edit_setup_files

function editinISE($filename) { powershell_ise.exe $filename }


foreach ($file in $files.Keys) {
    Write-Host "Opening File in PowerShell_ISE : $file "
    powershell_ise.exe $file
    Start-Sleep -Seconds 1
}

Write-Output "All Setup_*.ps1 files opened in Powershell Successfully"