@echo off
REM Send Logs to the Python File -> log.py

python figlet.py --message "Compare the Hashe Value"
python log.py --text " Instructions => Follow the syntax below to compare hash value"
python log.py --text " script name => powershell-script-compare-file-hashes-v2.0.ps1 "
python log.py --text " -File1 => Pass First Filename."
python log.py --text " -File1 => Pass string to filter the filenames with "
python log.py --text " syntax => .\powershell-script-compare-file-hashes-v2.0.ps1 -File1 file.txt -File2 file2.txt"

python line.py --range 75

python log.py --text " 1st File => %1 "
python log.py --text " 2nd File => %2 "
python log.py --text "Comparing Hash Value of File1 [%1] and File2 [%2]"

REM setlocal enabledelayedexpansion

python line.py --range 75

pwsh powershell-script-compare-file-hashes-v2.0.ps1 -File1 code-snippets\%1 -File2 code-snippets\%2
REM python log.py --text " Failed to Compare the Hash Values. Try Again "

REM python log.py --text " Total Files Found with name [%2]=> !count! "


