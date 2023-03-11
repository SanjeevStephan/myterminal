<# 
You can loop through the keys of the hashtable using a foreach loop and display each key, which represents the file name, using the Write-Host cmdlet. Here's an example:
#>

$files = @{
    "script_launcher.ps1" = "Launches the PowerShell Scripts"
    "setup_config.ps1"    = "Contains Script Configuration Settings"
    "setup_dir.ps1"       = "Dictionary of Setup Files and Directories"
    "setup_func.ps1"      = "Contains Setup Operational Functions"
    "setup_guide.ps1"     = "Understand how the terminal_setup_v1.0 script works"
    "setup_include.ps1"   = "Includes necessaries setup dependencies"
    "setup_path.ps1"      = "Important Setup related paths"
    "setup_script.ps1"    = "Dictionary of Executable {py,ps1,cmd} Scripts"
    "setup.ps1"           = "Main Terminal Setup Script v1.0"
}

foreach ($file in $files.Keys) {
    Write-Host $file
    Start-Sleep -Seconds 1
}
