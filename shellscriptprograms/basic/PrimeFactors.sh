#!/bin/bash
# print all the prime factors of the inputed number
clear
echo "enter the integer : "
read number
i=2
flag=0
if [ $nummber -lt 2 ]
then
	echo "invalid input"
	exit 1
fi
while [ `expr $i \* $i ` -le $number ]
do	
	j=2
	while [ $j -lt $i ]
	do
		if [ `expr $i % $j` -eq 0 ]
		then
			flag=1
			break
		fi
		j=`expr $j + 1`
	done
	if [ $flag -eq 0 ]  
	then
		if [ `expr $number % $i` -eq 0 ]
		then
			echo $i
		fi
	fi
	flag=0
	i=`expr $i + 1`
done
