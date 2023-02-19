
#-------------------- Include Below File ----------------
#. "$HOME\Documents\PowerShell\profile_include.ps1"
#-------------------- Functions {Pass-Argument}----------------
function helpnow(){

#$func_name.GetEnumerator() | Format-Table Name, Value -AutoSize

$func_name.GetEnumerator() | Format-Table @{label="Command"; expression={$_.Key}}, @{label="Syntax"; expression={$_.Value}} -AutoSize

}
function figlet($text_to_display){
    & python $script["figlet"] --message $text_to_display
}
function goto($dir_name) { 
#------------- Pass argument to the below functions 
# by calling the function name such as 'goto <argument>' 
# example:- goto py 
        switch ($dir_name) 
        {
            "pshell"
            {
                figlet("PowerShell")
                cd $paths["powershell"]
                dir
            }
            "py" 
            {
                figlet("PyScript")
                cd $paths[$dir_name]
                dir
              
            }
            "terminal" 
            {
                figlet("Terminal")
                cd $paths[$dir_name]
                dir
            }
            "pymath" 
            {
                 figlet("pymath")
                 cd $paths[$dir_name]
            }
            Default 
            {
                Write-Host "You entered the directory[$dir_name] that is not on the profile dictionary"
            }
        }

}
function run($script_name) {
    
    Switch($script_name)
    {

        "pymath"
        {
            Write-Host "Pymath is running"
        }

        Default
        {
            Write-Host "Invalid Script Name | Retry "
        }
    }
}
function google($text_to_query) {

}
function greet($name,$age) {
    Write-Host "Hello, My Name is $name and i am $age year old"
}
function edit($filename){
Start-Process powershell_ise.exe $filename
}
function nano($filename){
#Edit file with format (file_name) in terminal itself (require no-space)
#Cannot Edit files with format 'sample text.txt' format (it has space)
Start-Process $profile_source\nano.exe "$filename"
}
function paste-temp($filename) {
#paste the template from template.ps1 to the $filename passed
Get-Content "$profile_source\template" | Out-File $filename
}
function clip($filename){
#Get Content from clipboard and pass it into the file provided
Get-Clipboard | Set-Content $filename
}
function addtest($filename){
#Add the prefix "test_" to a given string argument:
#$file_to_be_renamed = "test_" + "$filename"

$filename = "$filename"
$filename = $filename.Replace(".\","test_")
Rename-Item $filename $file_to_be_renamed
#check_file_exists = $pwd + "$filename"
#bool = Test-Path check_file_exists
Write-Host $filename successfully renamed

}