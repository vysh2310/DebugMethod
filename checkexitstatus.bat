@echo off

REM Run the command
C:/DebugGit/DebugMethod/pre-commit-prevent.bat

REM Check the return code
if %errorlevel% neq 0 (
  echo Command failed with exit code %errorlevel%.
  echo "Detected Polyspace violations, do not commit"
  exit /b %errorlevel%
)
