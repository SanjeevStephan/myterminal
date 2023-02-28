@echo off

set argument_passed=%1

REM check if first command-line-argument is passed or not

if "%argument_passed%"=="" (
    echo No argument passed.
    pause
    exit /b
) else (
    echo Argument Received : %argument_passed%
)