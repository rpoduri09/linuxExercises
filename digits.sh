#!/bin/bash
sum=0

for i in {1000..2000}; do
  if [[ "$i" =~ ^[01]+$ ]]; then
	  echo $i
	  sum=$((sum + i))
  fi
done

echo "The sum of the numbers between 1000 and 2000 having digits only from the set {0, 1} is $sum."
