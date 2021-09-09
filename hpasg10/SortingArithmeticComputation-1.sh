declare -A result
declare -a resultArray
read -p "Enter 1st number: " a
read -p "Enter 2nd number: " b
read -p "Enter 3rd number: " c

arithmeticOp1=$((a+(b*c)))
arithmeticOp2=$(((a*b)+c))
arithmeticOp3=$((c+(a/b)))
arithmeticOp4=$(((a%b)+c))

function arraySortAscending() {
	arrLength=${#resultArray[@]}
	for (( i=0; i<$arrLength; i++ ))
	do
		min=$i
		for (( j=i+1; j<$arrLength; j++ ))
		do
			arrayValue1=${resultArray[j]}
			arrayValue2=${resultArray[min]}
			if [ $arrayValue1 -lt $arrayValue2 ]
			then
				min=$j
			fi
		done
		temp=${resultArray[i]}
		resultArray[i]=${resultArray[min]}
		resultArray[min]=$temp
	done
	echo "Sorted resultArray in Ascending order: ${resultArray[@]}"
}

result[0]=$arithmeticOp1
result[1]=$arithmeticOp2
result[2]=$arithmeticOp3
result[3]=$arithmeticOp4

for (( i=0; i<${#result[@]}; i++ ))
do
	resultArray[i]=${result[$i]}
done

echo "resultArray: ${resultArray[@]}"

arraySortAscending
