# Die roll

#!/bin/bash
function largest() {
	largest=0
	length=${#rollDieCount[@]}
	for (( i=1; i<=$length; i++ ))
	do
		value=${rollDieCount[$i]}
		if [ $value -gt $largest ]
		then
			largest=$value
			maxx=$i
		fi
	done
	echo $'\n'Dice Number $((maxx)) reached $largest times
}
function smallest() {
	smallest=7
	length=${#rollDieCount[@]}
	for (( i=1; i<=$length; i++ ))
	do
		value=${rollDieCount[$i]}
		if [ $value -lt $smallest ]
		then
			smallest=$value
			minn=$i
		fi
	done

	for (( i=1; i<=$length; i++ ))
	do
		value=${rollDieCount[$i]}
		if [ $smallest -eq $value ]
		then
			echo "Dice Number $i reached only $smallest times"
		fi
	done
}

declare -A rollDie
declare -A rollDieCount
counter=0
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0

while [ $count1 -lt 10 -a $count2 -lt 10 -a $count3 -lt 10 -a $count4 -lt 10 -a $count5 -lt 10 -a $count6 -lt 10 ]
do
	random=$(((RANDOM%6)+1))
	rollDie[((counter++))]=$random
	echo -n "$random "
	case $random in
	1)
		count1=$((count1+1))
		;;
	2)
		count2=$((count2+1))
		;;
	3)
		count3=$((count3+1))
		;;
	4)
		count4=$((count4+1))
		;;
	5)
		count5=$((count5+1))
		;;
	*)
		count6=$((count6+1))
		;;
	esac
done

rollDieCount[1]=$count1
rollDieCount[2]=$count2
rollDieCount[3]=$count3
rollDieCount[4]=$count4
rollDieCount[5]=$count5
rollDieCount[6]=$count6

#echo $'\n'count: ${rollDieCount[@]}
largest
smallest
