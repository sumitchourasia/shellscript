#!/bin/bash
##power of 2 
clear
echo "enter the power : "
read power
number=2
i=1
value=1
if [ $power -lt 0 ]
then
	echo " invalid power "
	exit 1
fi

while [ $i -le $power ]
do
	value=`expr $value \* 2`
	echo " $number * $i = $value "
	i=`expr $i + 1`
done
