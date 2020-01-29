#!/bin/bash
## Harmonic progression 
clear
echo "enter the number for Harmonic Progression"
read times
i=1
hp=0
if [ $times -lt 1 ]  
then
	echo "invalid input"
	exit 1
fi
while [ $i -le $times ]
do
	temp=$(echo "1" "$i" | awk '{print $1 / $2}')
	hp=$(echo "$hp" "$temp" | awk '{print $1 + $2 }')
	i=$(( $i + 1 ))
done
echo "HP : $hp"
