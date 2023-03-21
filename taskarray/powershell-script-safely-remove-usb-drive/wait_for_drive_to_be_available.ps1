# Wait for F drive to become available
do {
    Write-Host "Waiting for F drive to become available..."
    Start-Sleep -Seconds 10
} until (Get-PSDrive F -ErrorAction SilentlyContinue)

# Display confirmation message
Write-Host "F drive is available."

