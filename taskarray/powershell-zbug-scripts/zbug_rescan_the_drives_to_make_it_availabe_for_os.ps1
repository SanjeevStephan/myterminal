# Define the drive letter to rescan
$driveLetter = "F:"

# Get the disk number associated with the drive letter
$diskNumber = (Get-Partition -DriveLetter $driveLetter).DiskNumber

# Rescan the disk to make it available to the operating system
Update-Disk -Number $diskNumber -PartitionStyle MBR

