#--------------------------| Files to be included in the PowerShell.Terminal.Setup | --------
$TERMINAL = "D:\terminal"

<#
$include_setup_ps1 = @{
    "setup"       = "$TERMINAL\setup.ps1"
    "setup_config"= "$TERMINAL\setup_config.ps1"
    "setup_func"  = "$TERMINAL\setup_func.ps1"
    "setup_guide" = "$TERMINAL\setup_guide.ps1"
    "setup_path"  = "$TERMINAL\setup_path.ps1"
    "setup_script"= "$TERMINAL\setup_script.ps1"
}

#>

. .\setup_config.ps1
. .\setup_path.ps1
. .\setup_script.ps1
. .\setup_func.ps1
. .\setup_guide.ps1