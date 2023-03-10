<#
.SYNOPSIS
    
	Copy All Files to ~/Documents/PowerShell

.DESCRIPTION
    
   This PowerShell script copys all the files and directory from 
   current working directory to the 'User-Documents/PowerShell' Directory 

.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||----------------------------- #>


   param(
       [Parameter(Mandatory=$true)]
       [string]$Action
   )



cd "D:\terminal\setup_task\"

. .\paths.ps1 #included paths.ps1

#$text_to_return = "nothing"

function Backup_Profile() {
#cp * ~/Documents/PowerShell

$source = "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
$destination = "D:\terminal"


# Create the destination directory if it does not exist
#if (!(Test-Path -Path $destination)) {
#    New-Item -ItemType Directory -Path $destination
#}

# Copy all files and directories from the source directory to the destination directory
Copy-Item -Path $source -Destination $destination
$check_status = test-path "$destination\Microsoft.PowerShell_profile.ps1"
if($check_status) {
    Write-Host "Profile Copied Successfully"
}
else {
    Write-Host "Unable to Copy profile"
}



}
function Restore_Profile(){

    # Copy all files and directories from the source directory to the destination directory

    copy $profile_backup_directory $documents_source -Recurse -Force -Verbose

    #Copy-Item -Path $profile_backup_directory -Destination $documents_source
    $check_status = test-path "$documents_source\profile\Microsoft.PowerShell_profile.ps1"
    if($check_status) {
    
        Write-Host "Profile Copied Successfully"
    }
    else {
        Write-Host "Unable to Copy profile"
    }


}
function Rename_Profile_2_PowerShell() {

    Move-Item $documents_restored_profile $profile_source

    # Create the destination directory if it does not exist
    if (Test-Path -Path $profile_source) {
       #New-Item -ItemType Directory -Path $profile_source

       echo "profile renamed to PowerShell Successfully"
    }
    else {echo "PowerShell Directory doesnot exists"}

}

function Think_Tank($action){
echo "Performing $action Operation of Profile Directories" 


 if (Test-Path $profile_source) { return $text_to_return = "PowerShell Directory already exists | $action aborted" }
    else 
    {  
             switch($action)
            {
                "restore" 
                { # Restore_Profile 
                  # Rename_Profile_2_PowerShell
                }
                "backup"  {  } # Backup_Profile
                Default { return $text_to_return = "Invalid Input "} 
            }
    }


   

}

Think_Tank($Action)

return $text_to_return