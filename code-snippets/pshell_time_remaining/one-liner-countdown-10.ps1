for ($i = 10; $i -gt 0; $i--) {
	Write-Host -NoNewline "$i "
	Start-Sleep -Milliseconds 1000
}
Write-Host -NoNewline "1"