# readme



> # Nano 
	> 		Make the nano text-editor command available 

### Follow these steps
1. Copy the **nano.exe** file to the **Program Files** directory.
	(here i will place the **nano.exe** in the ***C:\Program Files\PowerShell\7*** directory)
	or simply run this script ***copy_nano_to_program_files_pwsh.ps1***  as admin 
``` 
copy .\nano.exe "C:\Program Files\PowerShell\7"

$nano_path = "C:\Program Files\PowerShell\7\nano.exe"

if(test-path $nano_path)  { Write-Output "Successfully Copied nano.exe to programfiles"}
else { Write-Output "Unable to copy nano.exe"}
```
2. Go to **My Computer** and Right-Click to get to the **properties**
	![clipboard.png](Hjfsf6-My-clipboard.png)
3. Then Select ***Advanced System settings**
  ![clipboard.png](sntcGoSrr-clipboard.png)
4. Click the **Environment Variable** under **Advanced Tab**
  ![clipboard.png](jDWdS3nlD-clipboard.png)
8. Under **Environment Variable** Click the **NEW** button and enter the info below
  (in my case i have put the **nano.exe** PowerShell directory)
        
      Note: The variable name should be in small letters such as **nano* (w/o extension)

![clipboard.png](ArmmFLONk-clipboard.png)
9. After then hit **Ok** and close all the window of the _Environmental Variable_ windows that are open.
10. Open any terminal of your choice ! you should be able to access **nano** command..
  (I my instances i am using the **powershell v7.3.3** to use the nano text-editor.)
![clipboard.png](RMRyXcRDF-clipboard.png)
11. The Command should be same as the variable_name from the **_previous step 8_** which is **nano**
![clipboard.png](5xbRCqoF3-clipboard.png)
12. Nano Terminal Text-Editor
![clipboard.png](2AouFG2yA-clipboard.png)

### Keyboard Shorcut for the Nano-editor
