$result = [Environment]::GetEnvironmentVariable("TERMINAL", "User")
if ($result -ne $null) {
    Write-Host "TERMINAL Is Available : $true"
} else {
    Write-Host "TERMINAL Is Available : $false"
}
