#!/bin/bash -x

echo enter  start Number
read m 
echo enter end number
read n

for a in $(seq $m $n)
do
    k=0
    for i in $(seq 2 $(expr $a / 2))
    do 
        if [ $(expr $a % $i) -eq 0 ]
        then
            k=1
            break
        fi
    done
    if [ $k -eq 0 ]
    then
    echo "Prime number is :" $a
    fi
done
