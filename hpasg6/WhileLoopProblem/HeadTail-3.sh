#!/bin/bash -x

heads=0
tails=0
count=0
while [ "$count" -lt 23 ]
do
   random=$((RANDOM%2))
if [ $random -eq 0 ]
then
   echo "Heads"
   heads=`expr $heads + 1`
else
	echo "Tails"
	tails=`expr $tails + 1`
fi
    count=`expr $count + 1`
    echo  "Total Heads Are:" $heads
    echo "Total Tails Are:" $tails
done

if [ $heads -eq 11 ]
then
   echo "Heads Wins"
else
 echo  "tails Wins"
fi
