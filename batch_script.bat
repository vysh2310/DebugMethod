 echo "Running Polyspace analysis..."
 cd C:\Program Files\Polyspace\R2023a\polyspace\bin
 polyspace-bug-finder -sources Debugging.c -misra3 all -checkers all -results-dir C:\DebugGit\DebugMethod\temp_analysis_result
