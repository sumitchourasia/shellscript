#!/bin/bash
# Quadratic roots of the equation
echo "enter the 3 co-efficients"
read a
read b
read c
delta=$(((b*b)-(4*a*c)))
if [ $delta -lt 0 ]
then
	echo "roots are complex"
	exit 1
fi
sqrtdelta=$(echo "$delta" | awk '{ print sqrt($1)}')
temp=$( echo "-1" "$b" | awk '{print $1 * $2 }') 
div=$(( 2 * a ))
temproot1=$( echo "$temp" "$sqrtdelta" | awk '{ print ($1 - $2)}')
temproot2=$( echo "$temp" "$sqrtdelta" | awk '{ print ($1 + $2)}')
root1=$(( temproot1 / div ))
root2=$(( temproot2 / div ))
echo "root1 : $root1"
echo "root2 : $root2"
