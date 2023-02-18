# Define the VBScript code for the message box
$vbsCode = @"
Set objShell = CreateObject("WScript.Shell")
strName = InputBox("Please enter your name.")
If strName <> "" Then
    objShell.Popup "Hello, " & strName & "!", 0, "Greetings"
End If
"@

# Execute the VBScript code and capture the user's name
$name = powershell -command "& { & '$vbsCode' }"

# Display the user's name on the terminal
Write-Host "Your name is: $name"

