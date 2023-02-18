
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