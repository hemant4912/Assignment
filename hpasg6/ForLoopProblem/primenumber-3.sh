#!/bin/bash -x

echo "Program to check whether number is prime or not."
read -p "Enter a number : " n
count=0
for (( i=2; i<=n/2; i++ ))
do
	mod=`awk 'BEGIN{printf('$n'%'$i')}'`
	if [ $mod -eq 0 ]
	then
		count=$((count+1))
	fi
done
if [ $count -gt 1 ]
then
	echo "It is not prime number"
else
	echo "It is prime number"
fi
