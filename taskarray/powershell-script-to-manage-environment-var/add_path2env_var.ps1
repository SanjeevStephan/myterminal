<#
.SYNOPSIS
    


.DESCRIPTION
    
    This PowerShell script . 
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>
# setEnv("MyJson","C:\Users\Sanju\Documents\PowerShell\myjson\")
setx /m MyJson "C:\Users\Sanju\Documents\PowerShell\myjson"

<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------


Set the JAVA_HOME variable via the command line
If you would prefer to set the JAVA_HOME (or JRE_HOME) variable via the command line:

Open Command Prompt (make sure you Run as administrator so you're able to add a system environment variable).
Set the value of the environment variable to your JDK (or JRE) installation path as follows:

setx /m JAVA_HOME "C:\Program Files\Java\jdk11.0.17.8"
Restart Command Prompt to reload the environment variables then use the following command to check the it's been added correctly. 

echo %JAVA_HOME%
You should see the path to your JDK (or JRE) installation.

#>
