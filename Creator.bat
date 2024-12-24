@echo off
:: Batch script for creating a project using RUSH or FAST

:: Prompt for project creation choice (RUSH or FAST)
set /p tool=Enter tool (RUSH/FAST): 
if /i "%tool%"=="RUSH" (
    set toolCommand=rush create
) else if /i "%tool%"=="FAST" (
    set toolCommand=fast create
) else (
    echo Invalid choice. Please enter either "RUSH" or "FAST".
    exit /b
)

:: Prompt for project name
set /p projectName=Enter the project name: 

:: Run the project creation command
%toolCommand% %projectName%