while ($true) {
    $currentTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    if (Test-Connection 8.8.8.8 -Count 1 -Quiet) {
        Write-Host "$currentTime - you are connected to internet"
    } else {
        Write-Host "$currentTime - you are not connected to the internet anymore"
    }

    Start-Sleep -Seconds 5
}

