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

rem Prompt user to select a file by index number
set /p index="Enter the index number of the file you want to select: "

rem Copy selected file to clipboard
set "selected_file=!file[%index%]!"
set "file_path=%cd%\!selected_file!"
echo Filename !selected_file! have been sent to clipout.py
echo file path is %file_path%

notepad %file_path%