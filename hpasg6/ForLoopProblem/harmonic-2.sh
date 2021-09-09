#!/bin/bash -x

echo Enter a number
read n
for (($i=1;$i<=$n;$i++))
do
if [ $i==1 ]
then series= 1/$i
echo "series in i == 1 condotion" $i
else
echo  "Else Condition"
for(( $j=2; $j -lt $n; $j++))
do
if [ $i==$j ]
then
$series="${series} + 1/${i}"
fi
done
fi
done
echo $series
