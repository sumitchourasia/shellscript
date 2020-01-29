#!/bin/bash
## Flip the coin number of time entered by user
clear
RANDOM = $$
echo -e "enter the number of times to flip the coin : \c"
read times
heads=0
i=1
headpercent=0
##check the input is valid
if [ $times -le 0 ]
then
	echo "invalid input "
	exit 1
fi
## while loop
while [ $i -le $times ]
do
	if [  $((RANDOM % 2 )) -eq 0 ];then 
		heads=` expr $heads + 1 `
	fi
		i=`expr $i + 1 `
done
echo "heads is : $heads"
headpercent=`expr $heads \* 100`
headpercent=`expr $headpercent / $times ` 
echo "percentage of heads : $headpercent " 
echo "percentage of tails : "`expr 100 - $headpercent`

