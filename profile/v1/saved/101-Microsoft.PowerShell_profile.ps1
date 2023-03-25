
# $profile
# Profile Located At :
# => C:\Users\Sanju\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
clear
python D:\myscripts\poweruser\figlet.py --message "PowerShell User"
Write-Output "Developed and Maintained by -Stephan | Last-Updated : 14-Feb-2023"
$currentprofile="C:\Users\Sanju\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
$script_path="D:\myscripts"
$ps1_script="$script_path\script.ps1"
$py_script="$script_path\script.py"
$pygame="$py_script\pygame"
$easyssh="$script_path\easyssh"
$poweruser="$script_path\poweruser"
$localprofile="$ps1_dscript\powershell_profile\powershell_profile.ps1"
$saveprofile="$ps1_script\powershell_profile\save-profile.ps1"
#----------------||Profile-related-operations||---------------
function Refresh { .$profile }
function Edit-Profile {powershell_ise.exe $profile }
function Edit-Scripts {code $script_path}
# function Save-Profile {powershell $saveprofile}
function Save-Profile {
    cd $ps1_script\powershell_profile\ 
    dir
    .\save-profile.ps1
    }
function View-Profile {
    clear
    showFiglet("View-Profile")
    cat $profile 
    }
function Reload-Profile { $currentprofile }
#----------------||Help Scripts At ($script_path\help.py) ||---------------
function help-ps1 {python $script_path\help.py\powershell }
#----------------||Execute Scripts At ($script_path) ||---------------
function showip {powershell $ps1_script\poweruser\show_myip.ps1}
function vmkali {powershell $script_path\script.ssh\kali_login_via_key.ps1}
function ps1help {python $script_path\script.ps1\cheatsheets\cheatsheet.py}
function pygame {python $py_script\pygame\pygame.py}
#----------------||Launch-Process||---------------
function brave {powershell $poweruser\launch_brave.ps1}
function apache2 {powershell $poweruser\launch_apache2web.ps1}
#----------------||Change-Directory||---------------
function cd-py {
    showFiglet("Python")
    cd $py_script
    dir
    }
function cd-ps1 {
    showFiglet("PowerShell")
    cd $ps1_script
    dir
    } 
function cd-power {
    showFiglet("PowerUser")
    cd $poweruser
    dir
    }
function cd-pygame {
    showFiglet("PyGame")
    cd $pygame
    dir
    }
#----------------||Tasks||---------------
function showFiglet($txt_to_display) {
    python D:\myscripts\poweruser\figlet.py --message $txt_to_display
}
