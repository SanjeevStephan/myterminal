@echo off
python figlet.py --message "Python-py"
setlocal enabledelayedexpansion

for %%i in (*.*) do (
    set "filename=%%i"
    if "!filename!"=="!filename:py=!" (
        rem do nothing
    ) else (
        set /a count+=1
        echo !count!. !filename!
        set "file[!count!]=!filename!"
    )
)

