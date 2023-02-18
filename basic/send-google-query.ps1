# Prompt the user to input a search query
$query = Read-Host "Enter a search query"

# Define the Google search URL and format the query for the URL
$url = "https://www.google.com/search?q=" + [System.Uri]::EscapeDataString($query)

# Send a web request to the Google search URL and extract the HTML content
$response = Invoke-WebRequest -Uri $url
$content = $response.Content

# Display the HTML content in the console
#Write-Host $content

brave $url

