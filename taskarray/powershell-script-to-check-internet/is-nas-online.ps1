$ip_addr = "192.168.29.200"

while ($true) {
    $currentTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    if (Test-Connection $ip_addr -Count 1 -Quiet) {
        Write-Host "$currentTime - Network Attached Storage (NAS-PC) is online"
    } else {
        Write-Host "$currentTime - (NAS-PC) isn't online anymore"
    }

    Start-Sleep -Seconds 5
}

