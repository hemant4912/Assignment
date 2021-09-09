#! /bin/bash -x

echo "Enter the number to be done"

n=2

read m

let P=$(( $n**$m ))

echo "The answer is $P "
