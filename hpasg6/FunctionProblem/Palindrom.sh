#!/bin/bash -x

echo "Enter the number"
read n
function pal
{
number=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
echo "a value is: " $a
n=`expr $n / 10 `
echo "n value is: " $n
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $number -eq $reverse ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi
}
r=`pal $n`
echo "Palindrom is : $r"
