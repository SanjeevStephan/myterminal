
   param(
       [Parameter(Mandatory=$true)]
       [string]$Name
   )

   $greeting = "Hello, $Name! Welcome to PowerShell!"
   return $greeting