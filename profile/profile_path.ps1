$paths  = @{
         "pyscript"        = "D:\pyscripts"
         "terminal"        = "D:\terminal"
         "powershell"      =  "$HOME\Documents\PowerShell"
         "terminal_profile"= "D:\terminal\profile"
          
          }
$script = @{
            "figlet" = "D:\terminal\py\figlet.py"
    
           }
$func_name = @{
    "figlet <text_to_display>" = "display cool figlet ascii text " 
    "goto <directory_name>"    = "navigate to directory {py|terminal}"
    "run <script_name>"        = "execute script like {pygame|pymath}"
    "refresh"                  = "reload the Microsoft.PowerShell.Profile.ps1 script"
    "location"                 = "location of the scripts and directory in profile dictionary"
    "helpnow"                  = "Display this help menu"
    "google <text_to_query>"   = "Send Query to the Google using brave browser"


     }