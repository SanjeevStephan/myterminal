@echo off
python neo\figlet.py --message "Syntax"
setlocal enabledelayedexpansion

for %%i in (*.*) do (
    set "filename=%%i"
    if "!filename!"=="!filename:syntax=!" (
        rem do nothing
    ) else (
        set /a count+=1
        echo !count!. !filename!
        set "file[!count!]=!filename!"
    )
)

