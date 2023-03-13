<#
  This code fetch filename from filename_path
#>

$path = "D:\terminal\setup_task\test_script.ps1"

# Use the Split-Path cmdlet to extract the file name from the path
$fileName = Split-Path $path -Leaf

# Output the file name to the console
Write-Host "The file name is: $fileName"

