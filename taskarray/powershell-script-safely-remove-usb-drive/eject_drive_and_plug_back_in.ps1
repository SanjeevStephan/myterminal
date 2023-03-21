# Eject the Drive F
$driveLetter = "F:"
$eject = New-Object -comObject Shell.Application
$eject.Namespace(17).ParseName($driveLetter).InvokeVerb("Eject")

# Wait for the drive to be ejected
Start-Sleep -Seconds 5

# Plug the Drive F back in
#$plugIn = New-Object -comObject Shell.Application
#$plugIn.Namespace(17).ParseName($driveLetter).InvokeVerb("Eject")

# Define the drive letter as $driveLetter = "F:" to rescan

# Rescan the drive to make it available to the operating system
Update-DiskCache -DiskNumber (Get-Disk | where {$_.Number -eq (Get-Partition -DriveLetter $driveLetter).DiskNumber}).Number


# Wait for the drive to be plugged in
Start-Sleep -Seconds 5

