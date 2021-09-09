# create array, search second largest and second smallet number without sorting the array.

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

function secondLargest() {
	largest=0
	secondLargest=0
	for (( arr=0; arr<$arrLength; arr++ ))
	do
		arrayValue=${randomNumberArray[arr]}
		if [ $arrayValue -gt $largest ]
		then
			secondLargest=$largest
			largest=$arrayValue
		elif [ $arrayValue -gt $secondLargest -a $arrayValue -ne $largest ]
		then
			secondLargest=$arrayValue 
		fi
	done
	echo "secondLargest: $secondLargest"
}

function secondSmallest() {
	#echo "${randomNumberArray[@]}"
	smallest=1000
	secondSmallest=1000
	for (( arr=0; arr<$arrLength; arr++ ))
	do
		arrayValue=${randomNumberArray[arr]}
		if [ $arrayValue -lt $smallest ]
		then
			secondSmallest=$smallest
			smallest=$arrayValue
		elif [ $arrayValue -lt $secondSmallest -a $arrayValue -ne $smallest ]
		then
			secondSmallest=$arrayValue 
		fi
	done
	echo "secondSmallest: $secondSmallest"
}

#Invoke/call function "arrayCreation"
arrayCreation

#length of an array
arrLength=${#randomNumberArray[@]}

#Invoke/call function "secondLargest"
secondLargest

#Invoke/call function "secondSmallest"
secondSmallest
