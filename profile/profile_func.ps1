
#-------------------- Include <this-file> in the Below File ----------------
#. "$HOME\Documents\PowerShell\profile_include.ps1"


<#--------------------------------------{ Function Index }------------------------------------------------
S.No        Function-Name                                 What-does-it-do?
 1.         addtest($filename)                            Add the prefix "test_" to a given string argument 
 2.         clip($action,$filename) 
 3.         copypath()
 4.         edit($filename)
 5.         figlet($text_to_display)
 6.         filterfile($extension,$substring)
 7.         google()
 8.         greet($name,$age)
 9.         getfilename($script_extension)
 10.        goto($dir_name)
 11.        helptab($task_name)
 12         lst()
 13.        launch($app_name)
 14.        listhash()
 15.        nano($filename)
 16.        paste-temp($script_extension,$filename)
 17.        pinggoogle()
 18.        refresh()
 18.        run($script_name_n_url)
 19.        snippets($script_extension)
 20.        TODO($action)
 21.        window()





#>
#--------------------------------------{ Alphabet-A }--------------------------------------------------
function alias() {
    figlet "Get-Alias"
    Get-Alias
}

function addtest($filename){
#Add the prefix "test_" to a given string argument:
#$file_to_be_renamed = "test_" + "$filename"

$filename = "$filename"
$file_to_be_renamed = $filename.Replace(".\","test_")
Rename-Item $filename $file_to_be_renamed
#check_file_exists = $pwd + "$filename"
#bool = Test-Path check_file_exists
Write-Host "$filename successfully renamed to $file_to_be_renamed"

}




#--------------------------------------{ Alphabet-B }--------------------------------------------------
function backup() {
figlet "backup-ing profile-configs"
Write-Host "Please Wait"
# Copy all files & directories from the $HOME/document/powershell directory to the destination directory
cd $profile_source
Copy-Item -Path * -Destination $profile_backup_path -Recurse -Force -Verbose
Write-Host "All Files Copied $profile_backup_path"
cd $profile_backup_path
dir 
}
#--------------------------------------{ Alphabet-C }--------------------------------------------------

function clip($action,$filename){
  switch($action)
    {
        #Get Content from clipboard and pass it into the file provided
        'in' { Get-Clipboard | Set-Content $filename } 
        #Get Content from File and pass it into the Clipboard provided
        'out'{ Get-Content $filename | Set-Clipboard }
        Default { Write-Host "Invalid Input | Try {Clip in <filename> | clip out <filename>}" }
    }
  
}
function copypath() {
    $current_directory = Get-Location
    $current_directory | Set-Clipboard
    Write-Output "[Copied] Directory Path: $($current_directory.Path)"
}

function checkinternet() { test-connection 8.8.8.8 } # Check the connection to the google-dns-server 

#--------------------------------------{ Alphabet-D }--------------------------------------------------



#--------------------------------------{ Alphabet-E }--------------------------------------------------
function edit($filename){
figlet "PowerShell ISE"

    switch($filename) 
    {
        "func"    {Start-Process powershell_ise.exe $profile_source/profile_func.ps1}
        "profile" {Start-Process powershell_ise.exe $profile_source/Microsoft.PowerShell_profile.ps1}
        "path"    {Start-Process powershell_ise.exe $profile_source/profile_path.ps1}
        "include" {Start-Process powershell_ise.exe $profile_source/profile_include.ps1 }
        Default {Start-Process powershell_ise.exe $filename}
    }

}
#--------------------------------------{ Alphabet-F }--------------------------------------------------
function figlet($text_to_display){
    & python $script["figlet"] --message $text_to_display
}
function filterfile($extension,$substring) {

Write-Output "Extension : $extension"
Write-Output "Substring to Look for : $substring"
Write-Output "---------------------------------------------------------------------"
Get-ChildItem -Filter *.$extension | Where-Object { $_.Name -like '*$substring*' }
# Get-ChildItem -Filter *.ps1 | Where-Object { $_.Name -like '*online*' }

}
function filterit($extension,$filter) {
Write "No Filter Script | filterit function is empty"
}
#--------------------------------------{ Alphabet-G }--------------------------------------------------
function google() {
   figlet "Google"
  $google_search = $script["google_query"] # retrive the value from the script dictionary
  .$google_search #execute the script
}
function greet($name,$age) {
    Write-Host "Hello, My Name is $name and i am $age year old"
}
function getfilename($script_extension) {
#changes the 'extensions' along with the file-naming convention a/c to script-file-type
$string_with_spaces = Get-Clipboard

    switch($script_extension)
    {
        "py" 
        { 
            # for python-files replace space( ) with (_)
            $new_string = $string_with_spaces -replace " ", "_"
             #$jointedString = $new_string -join ".py" <- this line didnot worked
             $jointedString = "$new_string.py" 
             $jointedString | Set-Clipboard # send 'new_string_file_name.py' to clipboard

            }
        "ps" 
        { 
             # for powershell-files replace space( ) with (-)
            $new_string = $string_with_spaces -replace " ", "-"
            # $jointedString = $new_string -join ".ps1"   <- this line didnot worked
            $jointedString = "$new_string.ps1"
            $jointedString | Set-Clipboard # send 'new-string-file-name.ps1' to clipboard
            }
        "txt"{ Set-Clipboard = $new_string -join ".txt" }
        Default {Write-Output "Wrong Parameter | Try -> {py,ps,txt}" }

    }


#Write-Output "Sent to Clipboard : $string_with_spaces" 
#Write-Output "After Replace : $new_string"  

    
}
function goto($dir_name) { 
#------------- Pass argument to the below functions 
# by calling the function name such as 'goto <argument>' 
# example:- goto py 
        switch ($dir_name) 
        {
            "codes"
            {
                figlet("{code} Snippet")
                cd $goto_paths["codes"]
                dir
            }
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
            "matrix"
            {
                figlet "The Matrix"
                cd $paths["matrix"]
                
            }
            "oracle"
            {
                figlet "The Oracle"
                cd $paths["oracle"]
                dir
                
            }
            "pymath" 
            {
                 figlet("pymath")
                 cd $paths[$dir_name]
                 dir *.bat             # Display only bat files
            }
            "project"
            {
                figlet("Project")
                cd $paths["project"]
                dir
            }
            Default 
            {
                
                Write-Host "[Invalid] You entered the directory[$dir_name] that is not on the profile dictionary"
                figlet 'goto'
                Write-Host "[Try] 'goto <directory-name> | with 'directory name from below' list"
                $goto_paths.GetEnumerator() | Format-Table @{label="Directory Name"; expression={$_.Key}}, @{label="Path"; expression={$_.Value}} -AutoSize

            }
        }

}
#--------------------------------------{ Alphabet-H }--------------------------------------------------

function helptab($task_name){

    switch($task_name) {
        "pls" {.$HOME\Documents\PowerShell\.help\help-pls-cli.ps1}
        "terminal" {$func_name.GetEnumerator() | Sort-Object | Format-Table @{label="Command"; expression={$_.Key}}, @{label="Syntax"; expression={$_.Value}} -AutoSize}
        Default { Write-Host "Wrong Input | Try -> helptab <task_name>"}

    }
}
#--------------------------------------{ Alphabet-I }--------------------------------------------------


# Sample dictionry format-table
#  $paths.GetEnumerator() | Format-Table @{label="Directory Name"; expression={$_.Key}}, @{label="Path"; expression={$_.Value}} -AutoSize





#--------------------------------------{ Alphabet-J }--------------------------------------------------


#--------------------------------------{ Alphabet-K }--------------------------------------------------


#--------------------------------------{ Alphabet-L }--------------------------------------------------
function lst() {
# Display only the files names
figlet "List File-names"
Get-ChildItem | Select-Object Name
}

function launch($app_name){

    switch($app_name) {
            "npad" { Start-Process "notepad.exe"}
            "snap"    { Start-Process "SnippingTool.exe"}
            Default   { Start-Process $app_name}

       }
}
function listhash() {
#Get-ChildItem | Select-Object LastWriteTime, Length, Name, @{Name="FileHash";Expression={(Get-FileHash -A SHA1 $_.FullName).Hash}}
Get-ChildItem | Select-Object Name, @{Name="FileHash";Expression={(Get-FileHash $_.FullName).Hash}}
}

#--------------------------------------{ Alphabet-M }--------------------------------------------------


#--------------------------------------{ Alphabet-N }--------------------------------------------------
function nano($filename){
#Edit file with format (file_name) in terminal itself (require no-space)
#Cannot Edit files with format 'sample text.txt' format (it has space)
Start-Process $profile_source\nano.exe "$filename"
}
#--------------------------------------{ Alphabet-O }--------------------------------------------------


#--------------------------------------{ Alphabet-P }--------------------------------------------------

function paste-temp($script_extension,$filename) {

    #paste the template from template4.{py|ps1} to the $filename passed as a argument
    switch($script_extension)
    {
        "py"     {Get-Content "$profile_source\.template\template4py" | Out-File $filename}
        "ps1"   {Get-Content "$profile_source\.template\template4ps1" | Out-File $filename}
        "cmdlet" {Get-Content "$profile_source\.template\tempalte4cmdlet" | Out-File $filename}
        "gpt4py" {Get-Content "$profile_source\.template\gpt-template4py" | Out-File $filename}
        "gpt4ps" {Get-Content "$profile_source\.template\gpt-template4ps1" | Out-File $filename}
         Default {cat $manual_url["func-paste-temp"] }

    }

}
function pinggoogle() { ping -t 8.8.8.8 } # Ping google-dns-server
#--------------------------------------{ Alphabet-Q }--------------------------------------------------


#--------------------------------------{ Alphabet-R }--------------------------------------------------
function refresh() {
     figlet "Refreshing"
     cls
    .$profile
     cd $paths["terminal"]
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
        "timetable"
        {
            figlet "Time-Table"
            #cd $paths["timetable"]
           #.$script["timetable"]
           Write-Host "Select Below Option to view timetables"
           #& python  $script[$script_name_n_url]
           Write-Output "1. Time table for Monday-Wednesday-Friday(MWF)"
           Write-Output "2. Time table for Tuesday-Thrusday-Saturday(TTS)"
           $choice = Read-Host "[ENTER] Select Time-Table for (1 OR 2):"


           Switch($choice)
           {
                "1"{ .$script["timetable_mwf"] } # MWF
                "2"{ .$script["timetable_tts"] } # TTS
                Default {Write-Output "invalid option entered"}
           }

        }
        "vocabulary"
        {
            
            .$script["vocabulary"] # dot executions bat|cmd scripts
            Write-Host "vocabulary executed Successfully"
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


#--------------------------------------{ Alphabet-S }--------------------------------------------------

function snippets($script_extension) {

figlet "Codes-Snippets"


    switch($script_extension)
    {
        "py"     {figlet "for Python"}
        "ps"     {figlet "for PowerShell"}
        "bat"    {figlet "for Batchfile"}
        "vscode" {Write-Output "Opening $profile_source in VSCode"}
         Default {Write-Output ""}

    }

    #get code-snippets for the specific scripting language
    switch($script_extension)
    {
        "py"     {cat "$profile_source\.codesnippets\python.ps1"}
        "ps"     {cat "$profile_source\.codesnippets\powershell.ps1"}
        "bat"    {cat "$profile_source\.codesnippets\batchfile.ps1"}
        "vscode" {code "$profile_source"}
        "window" {Start-Process explorer.exe "$profile_source\.codesnippets\" }
         Default {cat $manual_url["code-snippets"] }

    }

}

#--------------------------------------{ Alphabet-T }--------------------------------------------------
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

#--------------------------------------{ Alphabet-U }--------------------------------------------------


#--------------------------------------{ Alphabet-V }--------------------------------------------------



#--------------------------------------{ Alphabet-W }--------------------------------------------------

function window() {
#Open Window in Current Directory
# Start the PowerShell ISE process
Start-Process explorer.exe $pwd
}

#--------------------------------------{ Alphabet-X }--------------------------------------------------


#--------------------------------------{ Alphabet-Y }--------------------------------------------------


#--------------------------------------{ Alphabet-Z }--------------------------------------------------




