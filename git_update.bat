@echo off
setlocal enabledelayedexpansion

echo ====================================================
echo             Cafe Rupkatha - Git Update
echo ====================================================
echo.

:: Show status of files
echo Checking for changes...
git status
echo.

:: Prompt for commit message
set /p msg="Enter commit message (or press ENTER for default 'update'): "

:: If the message is empty, set it to default 'update'
if "%msg%"=="" (
    set msg=update
)

echo.
echo ----------------------------------------------------
echo 1. Staging all changes...
git add -A

echo.
echo 2. Committing changes...
git commit -m "%msg%"

echo.
echo 3. Pushing changes to GitHub (origin main)...
git push origin main

echo.
echo ====================================================
echo Git update completed successfully!
echo ====================================================
echo.
pause
