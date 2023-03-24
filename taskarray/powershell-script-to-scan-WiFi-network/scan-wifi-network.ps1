$networks = netsh wlan show networks mode=Bssid

foreach ($line in $networks) {
    if ($line -match '^SSID') {
        $ssid = $line.Substring(6).Trim()
    }
    elseif ($line -match '^BSSID') {
        $bssid = $line.Substring(7).Trim()
    }
    elseif ($line -match '^Signal') {
        $signal = $line.Substring(20).Trim()
        Write-Host "SSID: $ssid"
        Write-Host "BSSID: $bssid"
        Write-Host "Signal strength: $signal"
        Write-Host "----------------------"
    }
}

