#!/bin/bash -x

echo enter end number
read number
IsPrime(){
i=2
flag=0
while test $i -le `expr $number / 2`
do
if test `expr $number % $i` -eq 0
then
flag=1
fi

i=`expr $i + 1`
done 
if test $flag -eq 1
then
echo "The number is Not Prime"
return 0
else
echo "The number is Prime"
return 1
fi
}
IsPrime $number
ret=$?
echo "the return value is: " $ret

GetPalindrome(){

number=$n
reverse=0
while [[ $n -gt 0 ]]
do
a=`expr $n % 10 `
echo "a value is: " $a
n=`expr $n / 10 `
echo "n value is: " $n
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [[ $number -eq $reverse ]]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi
}


if [[ $ret -eq 1 ]]
then
r=`GetPalindrome $number`
echo "Palindrom Is " $r
fi
