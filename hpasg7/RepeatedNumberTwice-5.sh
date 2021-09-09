#!/bin/bash
# Repeated Twice number

counter=0
for (( i=0; i<=100; i++ ))
do
	rem=$((i%10))
	div=$((i/10))
	if [ $rem -eq $div -a $div -ne 0 ]
	then
		arr[((counter++))]=$i
	fi
done
echo "Twice number array: ${arr[@]}"
