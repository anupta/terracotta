@echo off
setlocal
cd /d "%~dp0"

git rev-parse --is-inside-work-tree >nul 2>&1
if errorlevel 1 (
    echo This file must be inside a Git repository.
    goto :failed
)

for /f "delims=" %%B in ('git branch --show-current') do set "BRANCH=%%B"
if not defined BRANCH (
    echo Could not determine the current branch.
    goto :failed
)

echo Current branch: %BRANCH%
echo.
git status --short
if errorlevel 1 goto :failed

echo.
echo Staging all changes...
git add -A
if errorlevel 1 goto :failed

git diff --cached --quiet
if errorlevel 2 goto :failed
if errorlevel 1 goto :commit

echo No new changes to commit.
goto :push

:commit
for /f "delims=" %%T in ('powershell.exe -NoProfile -Command "Get-Date -Format yyyy-MM-dd_HH-mm-ss"') do set "TIMESTAMP=%%T"
if not defined TIMESTAMP (
    echo Could not generate a commit timestamp.
    goto :failed
)

echo Creating commit...
git commit -m "Update %TIMESTAMP%"
if errorlevel 1 goto :failed

:push
echo Pushing to origin/%BRANCH%...
git push origin "%BRANCH%"
if errorlevel 1 goto :failed

echo.
echo Sync complete.
pause
exit /b 0

:failed
echo.
echo Sync failed. Review the message above, then try again.
pause
exit /b 1
