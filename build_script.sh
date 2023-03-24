#! /bin/sh
# Does not work with checker xml file: -checkers-selection-file "$(pwd)/misra_checker.txt" \... Need to Geck this



files=$(git status --porcelain)
mkdir temp_analysis_result
for file in $files; do
	if [[ $file == *.cpp ]]; then

		# Bug finder analysis
	    echo "---- Analysing $file"
		"C:/Program Files/Polyspace as You Code/R2023a/polyspace/bin/polyspace-bug-finder-access" \
		-sources "../$file" \
		-misra-cpp all-rules \		
		-results-dir "$(pwd)/temp_analysis_result/_$file"
		echo "---- Analysis complete"

		# Extract result in JSON
		"C:/Program Files/Polyspace as You Code/R2023a/polyspace/bin/polyspace-results-export" \
		-format json-sarif -results-dir "$(pwd)/temp_analysis_result/_$file/ps_results.payc" \
		-output-name "$(pwd)/temp_analysis_result/_$file/_$file.json"

	fi
done
