@echo off

set /p age="Enter your age: "

if %age% lss 18 (
    echo You are a minor.
) else if %age% geq 18 if %age% leq 64 (
    echo You are an adult.
) else (
    echo You are a senior citizen.
)

