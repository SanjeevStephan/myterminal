@echo off
setlocal enabledelayedexpansion

set /a count=0
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

if %count%==0 (
    echo No files found.
) else (
    set /p choice=Enter file number to open: 
    set "selected_file=!file[%choice%]!"
    REM %selected_file%
    notepad.exe -File %selected_file% 	
    REM powershell_ise.exe -File "!selected_file!"
)

