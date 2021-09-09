#!/bin/bash -x

echo "Enter 1 for: Celsius to Fahrenheit conversion"
echo "Enter 2 for: Fahrenheit to Celsius conversion"
read -p "Enter conversion mode: " conversion

#Define the function "fahrenheit"
function fahrenheit() {
	read -p "Enter a temperature in Celcius: " temp
	if [ $temp -ge 0 -a $temp -le 100 ]
	then
		#using 'x' variable just for simplify the calculation
		#x=temp*9/5
		x=`awk 'BEGIN{printf("%0.2f",'$temp'*9/5)}'`
		#fah=x+32
		fah=`awk 'BEGIN{printf("%0.1f",'$x'+32)}'`
		echo "fah : $fah"
	fi
}

#Define the function "celsius"
function celsius() {
	read -p "Enter a temperature in Fahrenheit: " temp
	if [ $temp -ge 32 -a $temp -le 212 ]
	then
		#using 'x' variable just for simplify the calculation
		x=$((temp-32))
		#x=temp-32
		cel=`awk 'BEGIN{printf("%0.2f",'$x'*5/9)}'`
		#cel=x*5/9
		echo "Cel : $cel"
	fi
}

case "$conversion" in
	1)
		#Invoke/call the function "fahrenheit"
		fahrenheit
		;;
	2)
		#Invoke/call the function "celsius"
		celsius
		;;
	*)
		echo "Enter proper conversion mode."
		;;
esac
