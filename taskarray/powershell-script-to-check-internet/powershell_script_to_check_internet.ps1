figlet "iNTERNET Connections"
$DELAY = 4


while ($true) {
    if (Test-Connection 8.8.8.8 -Count 1 -Quiet) {
        Write-Host "[CONNECTED] you are connected to internet"
    } else {
        Write-Host "[DISCONNECTED] you are not connected to the internet anymore"
    }

    Start-Sleep -Seconds $DELAY
}

