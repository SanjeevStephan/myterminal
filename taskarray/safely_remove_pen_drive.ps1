# Define the drive letter
$driveLetter = "F:"

# Eject the drive
$eject = New-Object -comObject Shell.Application
$eject.Namespace(17).ParseName("$driveLetter").InvokeVerb("Eject")
Write-Output "Safely remove pendrive on drive-letter [F:\]"
