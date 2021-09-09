headCount=0
tailCount=0
maxWon=21
while [ $headCount -lt $maxWon -a $tailCount -lt $maxWon ]
wonCount=0
while [ $wonCount -le 2 -a $wonCount -ge -2 ]
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		((headCount++))
	else
		((tailCount++))
	fi
	headCount=0
	tailCount=0
	maxWon=21
	while [ $headCount -lt $maxWon -a $tailCount -lt $maxWon ]
	do
		random=$((RANDOM%2))
		if [ $random -eq 1 ]
		then
			((headCount++))
		else
			((tailCount++))
		fi
	done

	wonCount=$((headCount-tailCount))
done

if [ $headCount -eq $maxWon ]
then
	wonCount=$((headCount-tailCount))
