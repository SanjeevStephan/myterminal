<#
.SYNOPSIS
    
-> take this json data and make a powershell script to display a random quotes everytime this script is called 	
now update it the following features -> after displaying the quotes ask the user to enter "Author", "Quote" and save it in the same file while     
automatically update the "No" based on the number of quotes it have 

.DESCRIPTION
    
   Sure, here's an updated PowerShell script that reads the JSON data from a file named 'saved_quotes.json', displays a random quote, prompts the user to enter a new quote and author, and then saves the new quote to the file with an updated "No" value. The script will keep running and asking for new quotes until the user manually exits the script by pressing CTRL+C: 
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
  To use this script, save it as a .ps1 file in the same directory as the 'saved_quotes.json' file, and then run it from the PowerShell console.  

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>
param (
    [string]$Name
)

$jsonFilePath = "D://terminal//pkgs//random_quotes_generator//quotes-of-the-day.ps1" 
$savedJsonPath = "D://terminal//pkgs//random_quotes_generator//saved_quotes.json"

function IndexTable() {

# Read the JSON data from the file
$jsonData = Get-Content -Raw -Path saved_quotes.json

# Convert the JSON data to a PowerShell object
$quotes = ConvertFrom-Json $jsonData

$quotesData = Get-Content -Raw -Path $savedJsonPath | ConvertFrom-Json
$tableData = $quotes | Select-Object No, Author, Quote
$tableData | Format-Table -AutoSize

<#

[Quote of the Day]
=> Believe you can and you're halfway there.
Author: Theodore Roosevelt

#>
}


function tableQuoteOfTheday() {
# Read the JSON data from the file and Convert the JSON data to a PowerShell object
$testjsonData = Get-Content -Raw -Path $savedJsonPath | ConvertFrom-Json
# Generate Random Number and use the number to pick quote from the list of quotes
$testrandomQuote = Get-Random -InputObject $testjsonData
$testtableData = @(
    [PsCustomObject]@{
        "Quote of the Day" = $testrandomQuote.Quote
        #"Author" = $testrandomQuote.Author
    }
)
$testtableData | Format-Table -AutoSize

Write-Host "[JSON] Reading quotes from the json file [$savedJsonPath]"

<# OUTPUT

Quote of the Day
----------------
It does not matter how slowly you go as long as you do not stop.

#>

}

function simpleQuotesOftheDay(){

 # Get a random quote
    $randomQuote = $quotes | Get-Random

    # Display the quote
    Write-Host "[Quote of the Day] `n=> $($randomQuote.Quote)`nAuthor: $($randomQuote.Author)"

}

function addNewQuotes() {


while ($true) {
    tableQuoteOfTheday

    Write-Host "`n[New Quote]"
    # Prompt the user to enter a new quote and author
    $author = Read-Host "[Enter] Author (or press CTRL+C to exit) :"
    $quote = Read-Host "[Enter] Quote :"

    # Determine the next "No" value
    $nextNo = ($quotes | Measure-Object).Count + 1

    # Create a new quote object
    $newQuote = @{
        Author = $author
        No = $nextNo
        Quote = $quote
    }

    # Add the new quote to the quotes array
    $quotes += $newQuote

    # Convert the quotes array back to JSON
    $jsonData = $quotes | ConvertTo-Json -Depth 100

    # Write the updated JSON data to the file
    Set-Content -Path $savedJsonPath -Value $jsonData -Force
    }

}

function checkArgument(){


 switch($Name)
 {
    "edit"  {
            Write-Host "[Argument] Passed to the ./random-quote-generator.ps1 is [$Name]"
            Write-Output "Opening File in Notepad"
            Notepad $jsonFilePath

            # Wait till the notepad is closed and then reload the script
            while (Get-Process "notepad" -ErrorAction SilentlyContinue) 
                {
                    Write-Host "Waiting for notepad to close..."
                    Start-Sleep -Seconds 1
                }

            Write-Host "Notepad is closed, continuing with the rest of the code."
            }
    "locate"{
            Write-Host "[Argument] Passed to the ./random-quote-generator.ps1 is [$Name]"
            Start-Process explorer.exe pwd
            }
        Default {
            Write-Output "Invalid or Empty Argument Passed to the ./random-quote-generator.ps1"
            
        }


 }


}


function initialize{
# Function put inside this block will be executed
./show-figlet.ps1 "Today's Quotes"
#./show-figlet.ps1 

checkArgument
IndexTable
tableQuoteOfTheday


}

# Launch the Script 
# initialize
# Quotes of the Day
tableQuoteOfTheday


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------
To use this script, save it as a .ps1 file in the same directory as the 'saved_quotes.json' file, and then run it from the PowerShell console. The script will display a random quote and prompt the user to enter a new quote and author. Once the user enters the new quote and author, the script will update the JSON data in the 'saved_quotes.json' file with the new quote and an updated "No" value, and save it back to the file. The next time the script is run, it will include the new quote in its random selection

 The script will display a random quote and prompt the user to enter a new quote and author. Once the user enters the new quote and author, the script will update the JSON data in the 'saved_quotes.json' file with the new quote and an updated "No" value, and save it back to the file. The script will keep running and asking for new quotes until the user manually exits the script by pressing CTRL+C.

#>