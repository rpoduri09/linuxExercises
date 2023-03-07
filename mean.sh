#!/bin/bash
if [ "$#" -lt 1 ]; then
  echo "usage: $0 <column> [file.csv]" >&2
  exit 1
fi

column=$1

if [ "$#" -lt 2 ]; then
  file=/dev/stdin
else
  file=$2
fi

mean=$(cut -d ',' -f $column $file | tail -n +2 | { sum=0; count=0; while read value; do sum=$((sum+value)); count=$((count+1)); done; echo "$sum/$count" | bc -l; })

echo "Mean of column $column: $mean"
