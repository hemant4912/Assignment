#!/bin/bash -x
a=(0 -2 -1 1 7 2 4 -6)
for (( i=0; i<=7; i++ ))
do
  for (( j=i+1; j<=7; j++ ))
   do
     for (( k=j+1; k<=7; k++ ))
     do
     sum=$((${a[i]}+${a[j]}+${a[k]}))
      if [ $sum -eq 0 ]
      then
        echo ${a[i]}  ${a[j]}  ${a[k]} = 0
       fi
     done
   done
done
