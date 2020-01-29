#!/bin/bash
#input and print two dimensional array
clear
declare -A arr
echo "enter the values in array : "
for (( i=0; i<2; i++ )) do
	for (( j=0; j<3; j++ )) do
		read arr[$i,$j]
	done
done

printf "%s\n" "printing the array "

for (( i=0; i<2; i++ )) do
        for (( j=0; j<3; j++ )) do
                printf "%d  " "${arr[$i,$j]}"
        done
	echo 
done

