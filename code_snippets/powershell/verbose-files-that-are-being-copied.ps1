<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   powershell syntax to verbose files that are being copied
    
.RESPONSE
   To display verbose output of files being copied in PowerShell, you can use the Copy-Item cmdlet with the -Verbose parameter.

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>



Copy-Item -Path "C:\SourceFolder\*" -Destination "C:\DestinationFolder\" -Verbose

 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

In this example, the Copy-Item cmdlet copies all files in the "C:\SourceFolder" directory to the "C:\DestinationFolder" directory and displays verbose output during the copy operation.

The -Verbose parameter instructs PowerShell to display detailed output during the copy operation, including the name of each file being copied and the progress of the copy operation.

You can also use other parameters with Copy-Item to control how files are copied, such as -Recurse to copy subdirectories and their contents, and -Force to overwrite existing files without prompting.

.LINK
   -> https://chat.openai.com/chat/

#>
