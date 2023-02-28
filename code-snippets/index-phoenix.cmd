@echo off
python figlet.py --message "Phoenix-ps1"
setlocal enabledelayedexpansion

for %%i in (*.*) do (
    set "filename=%%i"
    if "!filename!"=="!filename:ps1=!" (
        rem do nothing
    ) else (
        set /a count+=1
        echo !count!. !filename!
        set "file[!count!]=!filename!"
    )
)

