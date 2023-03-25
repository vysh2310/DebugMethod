 echo "Polyspace analysis for any defects, do not commit"
 cd C:\Program Files\Polyspace\R2023a\polyspace\bin
 polyspace-bug-finder -sources C:\DebugGit\DebugMethod\Debugging.c -misra3 all -checkers all -results-dir C:\DebugGit\DebugMethod\temp1_analysis_result
 polyspace-results-export -format csv ^
    -results-dir C:\DebugGit\DebugMethod\temp1_analysis_result ^
    -output-name C:\DebugGit\DebugMethod\temp1_analysis_result.csv
 


