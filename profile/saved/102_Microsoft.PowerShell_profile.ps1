
$hashtable = @{
    "terminal" = "D:\terminal"
    "figlet"   = "D:\terminal\show-figlet.ps1"
    "nano"     = "D:\terminal\nano-editor.ps1"
}

$terminal = $hashtable["terminal"]
$figlet = $hashtable["figlet"]
$nano   = $hashtable["nano"]

cd $terminal
.$figlet "PowerShell User"