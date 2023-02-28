REM Disables the display of command prompt commands
@echo off  

REM Enables the use of delayed environment variable expansion
setlocal enabledelayedexpansion  

set extension=%1
set substring=%2

REM Initializes a counter variable 'count' to 0
set /a count=0  

REM Iterates over all files in the current directory
for %%i in (*.%extension%) do (  
REM Assigns the current file name to a variable 'filename'
    set "filename=%%i"  
REM Checks if the filename contains the word 'syntax'
    if "!filename!"=="!filename:%substring%=!" (  
        rem do nothing  
	REM If it does not contain 'syntax', do nothing
    ) else (
	REM If it contains 'syntax', increments the counter variable 'count'
        set /a count+=1  
	REM Outputs the index and filename of the file
        echo !count!. !filename!  	
	REM Stores the filename in an array 'file'
        set "file[!count!]=!filename!"  
    )
)

REM Get Current Working Directory
REM  Changes the current working directory to the directory containing the batch file
cd /d %~dp0  
REM Outputs the current working directory
echo Current working directory: %cd%  

rem Prompt user to select a file by index number
REM  Prompts the user to enter a file index number
set /p index="Enter the index number of the file you want to select: "  

rem Copy selected file to clipboard
REM  Retrieves the file name from the 'file' array using the index number
set "selected_file=!file[%index%]!"  
REM  Constructs the file path using the current working directory and the file name
set "file_path=%cd%\!selected_file!"  
REM  Outputs the selected file name
echo Filename !selected_file! have been sent to clipout.py 
REM  Outputs the selected file path
echo file path is %file_path%  
REM Opens the selected file in Notepad
notepad %file_path%  
