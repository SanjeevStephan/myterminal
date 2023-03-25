#--------------------------| Files to be included in the Microsoft.PowerShell.Profile.ps1 | --------
$include_ps1 = @{
    "profile_config"= "$HOME\Documents\PowerShell\profile_config.ps1"
    "profile_path"  = "$HOME\Documents\PowerShell\profile_path.ps1"
    "profile_func"  = "$HOME\Documents\PowerShell\profile_func.ps1"
    "profile_manual"= "$HOME\Documents\PowerShell\profile_manual.ps1"
    "profile_dictionary"= "$HOME\Documents\PowerShell\profile_dict.ps1"
}

. $include_ps1["profile_config"]
. $include_ps1["profile_path"]
. $include_ps1["profile_func"]
. $include_ps1["profile_manual"]
. $include_ps1["profile_dictionary"]

# Unofficial and temporary includes
$tempInclude = @{
    "shortcutDir" = "$HOME\Documents\PowerShell\toggle-shortcut-directory.ps1"

}

. $tempInclude["shortcutDir"]