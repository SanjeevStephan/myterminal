# Set the URL and output file path
$url = 'https://www.apalrd.net/posts/2022/wyse_basic/'
$outputFilePath = 'E:\Project\smarthomegodda\pc_to_run_home_assistant\Dell Wyse 3040 Thin Client\wyse_basic.mhtml'

# Create a new WebClient object
$webClient = New-Object System.Net.WebClient

# Set the output format to MHTML
$webClient.Headers.Add("Accept", "multipart/related")

# Download the webpage and save it to the specified output file path
$webClient.DownloadFile($url, $outputFilePath)

# Dispose of the WebClient object
$webClient.Dispose()

