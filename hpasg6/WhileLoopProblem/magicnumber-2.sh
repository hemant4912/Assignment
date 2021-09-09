#!/bin/bash -x

echo "Guess Number between 0 to 100"
num=$(((RANDOM%100)+1))
guess=-1
while [ $guess -ne $num ]
do
echo "enter your guess: " 
read guess
if [ $guess -eq $num ]
then 
echo "yes the num is: " $num
elif [ $guess -gt $num ]
then
echo "number is too high"
else 
echo "number is too low"
fi
done
