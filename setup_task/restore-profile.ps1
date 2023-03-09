<#
.SYNOPSIS
    
	Copy All Files to ~/Documents/PowerShell

.DESCRIPTION
    
   This PowerShell script copys all the files and directory from 
   current working directory to the 'User-Documents/PowerShell' Directory 
    
-------------------------------|| CODE_BELOW ||-----------------------------
#>

. .\paths.ps1
#.\paths.ps1

function restoreProfile(){

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
function renameDirectory() {

    Move-Item $documents_restored_profile $profile_source

    # Create the destination directory if it does not exist
    if (Test-Path -Path $profile_source) {
       #New-Item -ItemType Directory -Path $profile_source

       echo "profile renamed to PowerShell Successfully"
    }
    else {echo "PowerShell Directory doesnot exists"}

}

restoreProfile
renameDirectory