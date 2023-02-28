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
REM Get Current Working Directory
cd /d %~dp0
echo Current working directory: %cd%

if %count%==0 (
    echo No files found.
) else (
    REM set /p choice=Enter file number to open: 
    REM set "selected_file=!file[%index%]!"
    REM set "selected_file=!file[%choice%]!"
    
    rem Prompt user to select a file by index number
    set /p index="Enter the index number of the file you want to open: "
	
    set "selected_file=!file[%index%]!"	

    echo slected file "!selected_file!"
    echo %cd% %selected_file% is executed
    REM notepad.exe -File %cd%\%selected_file% 	
    REM powershell_ise.exe -File "!selected_file!"
)

