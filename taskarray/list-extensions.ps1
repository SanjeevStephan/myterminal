Function Get-FilesByExtension([string]$Extension) {
  Get-ChildItem -Path . -Filter "*.$Extension" | ForEach-Object { $_.Name }
}

