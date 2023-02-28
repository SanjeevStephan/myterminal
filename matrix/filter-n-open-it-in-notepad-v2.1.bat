@echo off  

setlocal enabledelayedexpansion  

if "%1"=="" (
    echo No argument passed.
    pause
    exit /b
)

set extension=%1
set substring=%2

set found_ext=0
set found_file=0

set /a count=0  

for %%e in (*.*) do (
    if "%%~xe"==".%extension%" (
        set found_ext=1
        goto check_files
    )
)

echo No such extension found.
pause
exit /b

:check_files

for %%i in (*.%extension%) do (  
    set "filename=%%i"  
    if "!filename!"=="!filename:%substring%=!" (  
        rem do nothing  
    ) else (
        set /a count+=1  
        echo !count!. !filename!  
        set "file[!count!]=!filename!"
        set found_file=1
    )
)

if %found_file%==0 (
    echo No such files in the current directory.
    pause
    exit /b
)

cd /d %~dp0  
echo Current working directory: %cd%  

set /p index="Enter the index number of the file you want to select: "  

set "selected_file=!file[%index%]!"  

set "file_path=%cd%\!selected_file!"  
echo Filename !selected_file! have been sent to clipout.py 
echo file path is %file_path%  

notepad %file_path%

