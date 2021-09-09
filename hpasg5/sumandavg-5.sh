#sum and avg of 5 random

random1=$((RANDOM%10))
echo "$random1"

random2=$((RANDOM%10))
echo "$random2"

random3=$((RANDOM%10))
echo "$random3"

random4=$((RANDOM%10))
echo "$random4"

random5=$((RANDOM%10))
echo "$random5"

SUMofall5=$(( $random1+$random2+$random3+$random4+$random5 ))

echo "THE SUM OF ALL NUMBERS IS $SUMofall5"

AVGofall5=$(( $SUMofall5 / 5 ))

echo "THE AVG OF ALL NUMBERS IS $AVGofall5"
