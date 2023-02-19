<#
.SYNOPSIS
    


.DESCRIPTION
    
    This PowerShell script . 
    
.PARAMETER

    

.EXAMPLE
    
    pip install pls-cli
    pls
     
.AUTHOR
    
    -guedesfelipe

.LINK

    https://guedesfelipe.github.io/pls-cli/

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>

$pls_commands = @{
    "pls"    = "launch the pls-cli notepad"
    "add"    = 'pls add "text-string-here"'
    "del"    = "pls del 1"
    "done"   = "pls done 1"
    "undone" = "pls undone 1"
    "edit"   = "pls edit 1 'new text here'"
    "move"   = "pls move 2 1"
    "task"   = "pls tasks"
    "quotes" = "pls quotes"
    "config" = "pls config"

}

$urls_dict = @{
    "INSTALL" = "pip install pls-cli"
    "GITHUB " = "git clone https://github.com/guedesfelipe/pls-cli.git"
    "WEBSITE" = "https://guedesfelipe.github.io/pls-cli/"
}

figlet "pls-cli | todo-list"

$pls_commands.GetEnumerator() | Format-Table @{label="Action"; expression={$_.Key}}, @{label="Syntax Command"; expression={$_.Value}} -AutoSize

$urls_dict.GetEnumerator() | Format-Table @{label="Title"; expression={$_.Key}}, @{label="Resource-URL"; expression={$_.Value}} -AutoSize


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------


Write-Host "[INSTALL] pip install pls-cli"
Write-Host "[GITHUB] git clone https://github.com/guedesfelipe/pls-cli.git"
Write-Host "[WEBSITE] https://guedesfelipe.github.io/pls-cli/"

#>
