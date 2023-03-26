<#                                
 ____             __ _ _         ___            _           _                  _
|  _ \ _ __ ___  / _(_) | ___   |_ _|_ __   ___| |_   _  __| | ___   _ __  ___/ |
| |_) | '__/ _ \| |_| | |/ _ \   | || '_ \ / __| | | | |/ _` |/ _ \ | '_ \/ __| |
|  __/| | | (_) |  _| | |  __/   | || | | | (__| | |_| | (_| |  __/_| |_) \__ \ |
|_|   |_|  \___/|_| |_|_|\___|  |___|_| |_|\___|_|\__,_|\__,_|\___(_) .__/|___/_|
                                                                    |_|
#>

#--------------------------| Files to be included in the Microsoft.PowerShell.Profile.ps1 | --------
$profle_config_path = "$Home\Documents\PowerShell\profile_config.ps1"
. $profle_config_path # must-include the config_file 'profile_config.ps1'

$profile_dependencies = @{
    "powerShell_profile"= "$profile_source\Microsoft.PowerShell_profile.ps1"
    "profile_config"    = "$profile_source\profile_config.ps1"
    "profile_console"   = "$profile_source\profile_console.ps1"
#   "profile_dictionary"= "$profile_source\deleted.ps1"
#   "profile_edit"      = "$profile_source\deleted.ps1"
    "profile_func"      = "$profile_source\profile_func.ps1"
    "profile_include"   = "$profile_source\profile_include.ps1"
    "profile_json"      = "$profile_source\profile_json_hashtable.ps1"
    "profile_manual"    = "$profile_source\profile_manual_hashtable.ps1"
    "profile_path"      = "$profile_source\profile_path_hashtable.ps1"
    "profile_script"    = "$profile_source\profile_script_hashtable.ps1"
    "profile_shortcut"  = "$profile_source\profile_shortcut_hashtable.ps1"

    
}

. $profile_dependencies["profile_config"]
#. $profile_dependencies["profile_dictionary"]
. $profile_dependencies["profile_shortcut"]
. $profile_dependencies["profile_json"]
. $profile_dependencies["profile_path"]
. $profile_dependencies["profile_func"]
. $profile_dependencies["profile_manual"]
#. $profile_dependencies["profile_edit"]
. $profile_dependencies["profile_script"]



# Unofficial and temporary includes
<#
$tempInclude = @{
    "shortcutDir" = "$profile_source\.unofficial\toggle-shortcut-directory.ps1"

}

. $tempInclude["shortcutDir"]

#>