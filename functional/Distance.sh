#!/bin/bash
# Distance between two coordinate using euclidean distance formula
clear
echo "enter the co-ordinates (x,y)"
read x2
read y2
x1=0
y1=0
x=$(( x2 - x1 ))
y=$(( y2 - y1 ))
sx=$(( x * x ))
sy=$(( y * y ))
temp=$(( sx + sy ))
if [ $temp -lt 0 ]
then
	echo "complex roots"
	exit 1
fi
distance=$(echo "$temp" |  awk '{print sqrt($1)}')
echo "distance is : $distance"
