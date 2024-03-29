
#-------------------- Include <this-file> in the Below File ----------------
#. "$HOME\Documents\PowerShell\profile_include.ps1"
#. $HOME\Documents\PowerShell\profile_paths.ps1

<#--------------------------------------{ Function Index }------------------------------------------------
        Function-Name                                 What-does-it-do?
        alias()
        addtest($filename)                            Add the prefix "test_" to a given string argument 
        alphabet()
        alphabet_reverse()
        backup()()
        clip($action,$filename) 
        copypath()
        createlink()
        checkinternet()
        edit($filename)
        extract($zipfile)
        figlet($text_to_display)
        filterfile($extension,$substring)
        google()
        greet($name,$age)
        getfilename($script_extension)
        goto($dir_name)
        helptab($task_name)
        iamonline()                                  check-internet
        lst()
        launch($app_name)
        listhash()
        nano($filename)
        openinbrave()
        openprocess()
        openfilter()
        psindex()
        paste-temp($script_extension,$filename)
        pinggoogle()                                  check-internet
        pico($action)
        refresh()
        run($script_name_n_url)
        removetest($filename)                         Remove the prefix "test_" from a given string argument
        randommath() 
        replace2dash
        snippets($script_extension)
        showip()
        stillconnected()
        safelyremove()
        payload($action,$filename)
        TODO($action)
        timeperques()
        window()





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

function alphabet() {

cd $paths["study"]
.$Script["alphabet_position"]

}
function alphabet_reverse() {
cd $paths["study"]
.$Script["alphabet_reverse_position"]

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

function createlink($shortcut_filename) {
# new-line => [ `n ]
$location = Get-Location
$url = Get-Clipboard
$filename = "$location\$shortcut_filename.url"
$text_to_write = "[InternetShortcut]`nURL=$url"

Set-Content $filename $text_to_write

if(Test-Path $filename) { 
    Write-Output "Link : $url"
    Write-Output "Shortcut Link : $filename Successfully Created "
}
else { Write-Output "Failed to create Shorcut Link" }

}

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
        "quotes"  { cd $env:snippet}
        Default {Start-Process powershell_ise.exe $filename}
    }

}

function extract($zipfile){ .$script["extract_zip"] $zipfile}
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
                cd $paths["mr_robot"]
                
            }
            "mrrobot" 
            {
                figlet("Mr Robot")
                cd $goto_paths["mr_robot"]
                dir
              
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
            "study"
            {
                figlet("Study")
                cd $goto_paths["study"]
                dir
            }
            "pico" 
            {
                figlet("Raspberry Pico")
                cd $goto_paths["pico"]
                dir
              
            }
            "payload" 
            {
                figlet("Pico Payload")
                cd $goto_paths["payload"]
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

function iamonline() {
#figlet "Checking iNTERNET "

    #while ($true) {
        if (Test-Connection 8.8.8.8 -Count 1 -Quiet) { Write-Host "[CONNECTED] Yes! you are connected to iNTERNET!" } 
        else { Write-Host "[DISCONNECTED] No! you are not connected to the iNTERNET anymore!" }

        #Start-Sleep -Seconds 5
   # }
}




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
 <#
 function nano($filename){
#Edit file with format (file_name) in terminal itself (require no-space)
#Cannot Edit files with format 'sample text.txt' format (it has space)
Start-Process $profile_source\nano.exe "$filename"
}

#>
#--------------------------------------{ Alphabet-O }--------------------------------------------------

function openinbrave($htmlfile){

$location = Get-Location
$localpath = "file:\\$location$htmlfile"
$webpath = $localpath.Replace("\","/")
Write-Output "Opening path in brave: $webpath"
Start-Process brave.exe $webpath
}

function openprocess() { get-process | out-gridview }
function openfilter() { dir | Out-GridView }
function psindex() { brave "https://ss64.com/ps/"  }


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
        "pshelp" {Get-Content "$profile_source\.template\help4ps1" | Out-File $filename} 
         Default {cat $manual_url["func-paste-temp"] }

    }

}
function pinggoogle() { ping -t 8.8.8.8 } # Ping google-dns-server

function pico($action) { & $script["pico_ducky"] $action }
function payload($action,$payload_file) { & $script["payload"] $action $payload_file}
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

function removetest($filename){
#Add the prefix "test_" to a given string argument:
#$file_to_be_renamed = "test_" + "$filename"

$filename = "$filename"
$file_to_be_renamed = $filename.Replace("test_","")
Rename-Item $filename $file_to_be_renamed
#check_file_exists = $pwd + "$filename"
#bool = Test-Path check_file_exists
Write-Host "$filename successfully renamed to $file_to_be_renamed"

}

function randommath() {
figlet "PyMath"

cd $paths["random_math"]
.$script["random_math"]

}

function replace($txt_to_replace,$txt_to_be_replace_with) {
 # Replace all occurance of $txt_to_replace with $txt_to_be_replace_with in the file names
 # of all files in the current working directory
$current_working_directory = Get-Location

$choice = Read-Host "Do you want to replace $text_to_replace with $txt_to_be_replace_with (y/n) : "
     if($choice -eq "y") {

            Get-ChildItem -Path $current_working_directory | 
            ForEach-Object {
                $newName = $_.Name.Replace("$txt_to_replace", "$txt_to_be_replace_with")
                Write-Output "Renamed : $newName"
                Rename-Item -Path $_.FullName -NewName $newName }

     } else { Write-Output "No Files have been touched. Goodbye" }

}

function replaceto($txt_to_replace) {

$current_working_directory = Get-Location

switch($txt_to_replace) {

    "dash" {  replace("_","-") }  # Replace all underscores with hyphens in the file names of all files 
    "underscore" { replace("-","_") } # Replace all hyphens with underscores in the file names of all files
    Default { Write-Output "Invalid Positional Argument"}


} # switch end-bloc


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
function showip() {

$status = "DISCONNECTED"

        if (Test-Connection 8.8.8.8 -Count 1 -Quiet) { $status = "CONNECTED" } 
        else { $status = "DISCONNECTED" }


<#
 SHOW IP
#>
$ip_address = ipconfig | Select-String "IPv4 Address" | Select-Object -First 1 | ForEach-Object { $_.ToString().Split(":")[1].Trim() }

& python $script["showip_status"] $ip_address $status   
#show_prettytable.py
}

function secret($action,$fileOrDirectory) {
# show | hide | unhide files in the current working directory
figlet "Secrets"
$get_current_location = Get-Location

    switch($action) {
        "hide" { attrib +s +h "$get_current_location\$fileOrDirectory" }
        "unhide" { attrib -s -h "$get_current_location\$fileOrDirectory" }
        "show" { dir $get_current_location -Force }
        Default { Write-Output "Use syntax -> secreet {hide|unhide|show} <file | dir>" }
    }


}

function stillconnected() {

while($true) {
        if(Test-Connection google.com -Quiet) {
            Write-Host ("[{0:T}] [ Connected ] You are connected to the internet" -f (Get-Date))
        }
        else {
            Write-Host ("[{0:T}] [ Disconnected ] No longer connected to the internet" -f (Get-Date))
        }
        Start-Sleep -Seconds 2  # wait for 10 seconds before pinging again

    }
}
function safelyremove() { & $script["safely_remove"] }
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

function timeperques(){
figlet "Time Per Questions"
.$script["time_per_ques"]
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




