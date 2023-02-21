$paths  = @{
         "powershell"      =  "$HOME\Documents\PowerShell"
         "terminal"        = "D:\terminal"
         "terminal_profile"= "D:\terminal\profile"
         "pyscript"        = "D:\pyscripts"
         "pymath"          = "D:\pyscripts\pymath"
         "project"         = "D:\terminal\project"
         "manual"          = "$HOME\Documents\PowerShell\.template"
          
          }
$script = @{
            "figlet" = "D:\terminal\py\figlet.py"
            "pymath" = "D:\pyscripts\pymath\pymath.py"
            "pygame" = "D:\pyscripts\pygame\pygame.py"
            "google_query" = "D:\terminal\taskarray\send-google-query.ps1"
    
           }
$func_name = @{
    "alias"                    = "made up short-nickname used in-place of the actual command"
    "backup"                   = "backup directory $HOME/Documents/PowerShell"
    "clip <filename|fileurl>"  = "paste the clipboard into the file"
    "edit <filename>"          = "edit files in powershell_ise"
    "figlet <text_to_display>" = "display cool figlet ascii text " 
    "goto <directory_name>"    = "navigate to directory {py|terminal}"
    "google"                   = "Send Query to the Google using brave browser"
    "helptab"                  = "Display helpful command table | try->{pls,terminal}"
 #   "location"                 = "location of the scripts and directory in profile dictionary"
    "nano <filename>"          = "open files in nano-terminal-editor"
    "pls"                      = "[pls-cli] default terminal todo script app"
    "run <script_name>"        = "execute script like {pygame|pymath}"
    "refresh"                  = "reload the Microsoft.PowerShell.Profile.ps1 script"
    "TODO"                     = "Open TODO List in Nano Editor"
    "window"                   = "open file explorer of the current working directory"
    

    
     


     }