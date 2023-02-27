python log.py --text " 1st File => %1 "
python log.py --text " 2nd File => %2 "
python log.py --text "Comparing Hash Value of File1 [%1] and File2 [%2]"

REM setlocal enabledelayedexpansion

python line.py --range 75

pwsh powershell-script-compare-file-hashes-v2.0.ps1 -File1 code-snippets\%1 -File2 code-snippets\%2