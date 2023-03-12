function toMinutes() {
# Ask the user for the number of questions and time available
$numberOfQuestions = Read-Host "Enter the number of questions:"
$timeAvailable = Read-Host "Enter the time available (in minutes):"

# Calculate the time per question
$timePerQuestion = $timeAvailable / $numberOfQuestions

# Convert time available from seconds to minutes
$seconds = 60
$intoSeconds = $timePerQuestion * $seconds

# Display the results
Write-Host "You have $($timePerQuestion.ToString("N2")) minutes per question to complete $numberOfQuestions questions in $timeAvailable minutes."

# Write-Output "Seconds : $intoSeconds Seconds"
Write-Host "You have $($intoSeconds) seconds per question to complete $numberOfQuestions questions in $timeAvailable minutes"
Write-Output "Good Luck"
}

toMinutes
