 echo "Running Polyspace analysis..."
 cd C:\Program Files\Polyspace\R2023a\polyspace\bin
 polyspace-bug-finder -sources C:\DebugGit\DebugMethod\Debugging.c -misra3 all -checkers all -results-dir C:\DebugGit\DebugMethod\temp1_analysis_result
 polyspace-results-export -format csv ^
    -results-dir C:\DebugGit\DebugMethod\temp1_analysis_result ^
    -output-name C:\DebugGit\DebugMethod\temp1_analysis_result.csv
  @echo off
set "word_to_match=Defect"
set "file_to_parse=temp1_analysis_result.csv"
set "match_found="

for /f "tokens=1-3 delims=," %%a in (%file_to_parse%) do (
    if /i "%%b"=="%word_to_match%" (
        set "match_found=1"
        echo Match found: %%b
    )
)

if defined match_found (
    echo Failure: Prohibit commit due to defects
    exit /b 1
) else (
    echo Success: Commit, as there are no defects
)


