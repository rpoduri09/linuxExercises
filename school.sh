#!/bin/bash
cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d ',' -f 7 | { sum=0; count=0; while read val; do sum=$((sum+val)); count=$((count+1)); done; echo "Average TotalAssessedValue: $(bc -l <<<"$sum/$count")"; }
