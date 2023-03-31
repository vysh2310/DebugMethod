REM Read the string from the output file
set /p input_string=<output.txt

REM Check if the input string matches a specific value
if "%input_string%"=="search_string" (
  REM If it matches, set the exit status to 1
  exit /b 1
) else (
  REM If it doesn't match, set the exit status to 0
  exit /b 0
)