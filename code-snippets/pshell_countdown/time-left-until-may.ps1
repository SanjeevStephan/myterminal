<#
.SYNOPSIS
    


.DESCRIPTION
    
    This PowerShell script that displays the time remaining in the format you specified:
	   Time Left : 101d 0h 26m 58s Until 31 May 2023 
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>

$targetDate = Get-Date "May 31, 2023"


do {
    clear
    $timeSpan = $targetDate - (Get-Date)
    $days = $timeSpan.Days
    $hours = $timeSpan.Hours
    $minutes = $timeSpan.Minutes
    $seconds = $timeSpan.Seconds
    Write-Host ("Time Left : {0}d {1}h {2}m {3}s Until 31 May 2023" -f $days, $hours, $minutes, $seconds)
    Start-Sleep -Seconds 1
} while ($timeSpan.TotalSeconds -gt 0)



<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>




-------------------------------|| HOW THE SCRIPT WORK ||--------------------
he script first sets the target date to May 31, 2023 using the Get-Date cmdlet. It then enters a loop that runs until the target date is reached.

Inside the loop, the script calculates the time remaining between the target date and the current date using the - operator. It then extracts the number of days, hours, minutes, and seconds from the resulting TimeSpan object.

Finally, the script displays the time remaining in the desired format using the Write-Host cmdlet and the -f operator to format the output string. The script then pauses for one second using the Start-Sleep cmdlet before looping back to calculate the updated time remaining.

The script uses the same logic as before to calculate the time remaining between the current date and May 31, 2023. However, it now uses the -f operator to format the output string in the desired format.

The output string uses placeholders, such as {0}, {1}, etc., to represent the values of the variables that will be inserted into the string. The -f operator then takes these placeholders and inserts the corresponding variable values into the output string.

When you run the script, it will display the time remaining in the format "Time Left: 101d 0h 26m 58s Until 31 May 2023". The script will update the countdown every second until the target date is reached.



#>
