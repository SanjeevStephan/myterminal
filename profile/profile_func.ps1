
#-------------------- Include Below File ----------------
#. "$HOME\Documents\PowerShell\profile_include.ps1"
#-------------------- Functions {Pass-Argument}----------------
function helpnow(){
#figlet "Terminal Help "
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
                cd $paths["pyscript"]
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
                
                Write-Host "[Invalid] You entered the directory[$dir_name] that is not on the profile dictionary"
                figlet 'goto'
                Write-Host "[Try] 'goto <directory-name> | with 'directory name from below' list"
                $paths.GetEnumerator() | Format-Table @{label="Directory Name"; expression={$_.Key}}, @{label="Path"; expression={$_.Value}} -AutoSize

            }
        }

}
function run($script_name_n_url) {
    
    Switch($script_name_n_url)
    {

        "pymath"
        {
            Write-Host "PyMath executed Successfully"
            cd $paths["pymath"]
            & python  $script[$script_name_n_url]
        }
        "pygame"
        {
           Write-Host "PyMath executed Successfully"
           & python  $script[$script_name_n_url]
        }
        Default
        {
            Write-Host "[Invalid] Script Name Not Mentioned in the Dictionary "
            figlet "run"
            Write-Host "[Try] run <script_name> | 'script_name' from below list"
            $script.GetEnumerator() | Format-Table @{label="Script Name"; expression={$_.Key}}, @{label="Path"; expression={$_.Value}} -AutoSize

        }
    }
}
function launch($app_name){

    switch($app_name) {
            "notepad" { Start-Process "notepad.exe"}
            "snap"    { Start-Process "SnippingTool.exe"}
            Default   { Start-Process $app_name}

       }
}
function google() {
   figlet "Google"
  $google_search = $script["google_query"] # retrive the value from the script dictionary
  .$google_search #execute the script
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
function TODO($action){
 # Display the TODO-List"
   cat $profile_source\TODO

    switch($action)
    {
        #open a text editor in nano-terminal-editor and save the todo-list
        "edit" { Start-Process $profile_source\nano.exe $profile_source\TODO}
        # Display the TODO-List"
        "list" {cat $profile_source\TODO}
        "exit" { exit }
        Default {Write-Host "Want to Edit | Try -> TODO <edit | list | exit>" }
    }

}

function listhash() {
#Get-ChildItem | Select-Object LastWriteTime, Length, Name, @{Name="FileHash";Expression={(Get-FileHash -A SHA1 $_.FullName).Hash}}
Get-ChildItem | Select-Object Name, @{Name="FileHash";Expression={(Get-FileHash $_.FullName).Hash}}
}

# Sample dictionry format-table
#  $paths.GetEnumerator() | Format-Table @{label="Directory Name"; expression={$_.Key}}, @{label="Path"; expression={$_.Value}} -AutoSize
