# create array, search second largest and second smallet number with sorting the array.

#generating random number
function randomNum() {
	minLimit=100
	maxLimit=1000
	randomNumber=$(((RANDOM%(maxLimit-minLimit))+minLimit))
	echo $randomNumber
}

#creating an Array of random number
function arrayCreation() {
	counter=0
	for (( counter=0; counter<10; counter++ ))
	do
		random=$( randomNum )
		randomNumberArray[$counter]=$random
	done
	echo "Array: ${randomNumberArray[@]}"
}

#sort an array
function arraySort() {
	for (( i=0; i<$arrLength; i++ ))
	do
		min=$i
		for (( j=i+1; j<$arrLength; j++ ))
		do
			arrayValue1=${randomNumberArray[j]}
			arrayValue2=${randomNumberArray[min]}
			if [ $arrayValue1 -lt $arrayValue2 ]
			then
				min=$j
			fi
		done
		temp=${randomNumberArray[i]}
		randomNumberArray[i]=${randomNumberArray[min]}
		randomNumberArray[min]=$temp
	done
	echo "Sorted array: ${randomNumberArray[@]}"
}

function secondLargest() {
	secondLargest="${randomNumberArray[$((arrLength-2))]}"
	echo "secondLargest: $secondLargest"
}

function secondSmallest() {
	secondSmallest="${randomNumberArray[1]}"
	echo "secondSmallest: $secondSmallest"
}

#Invoke/call function "arrayCreation"
arrayCreation

arrLength=${#randomNumberArray[@]}

#Invoke/call function "arraySort"
arraySort

#Invoke/call function "secondLargest"
secondLargest

#Invoke/call function "secondSmallest"
secondSmallest
