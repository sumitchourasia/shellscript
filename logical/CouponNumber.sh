#!/bin/bash
#Coupon number program
arr=()
echo "enter the number of coupon : "
read len
echo "enter the $len coupons : "
for (( i=0; i<$len; i++ )) do 
	read arr[$i]
done
echo "entered coupons are :"
for (( i=0;i<$len;i++ )) do 
	printf "%d " "${arr[$i]}"
done
#find max to cap the limit of Random number
max=0
for(( i=0;i<$len;i++ )) 
do 
if [ ${arr[$i]} -gt $max ]
then
	max=${arr[$i]}
fi
done
echo "max : $max"
hit=0
total=0
while [ $hit -lt $len ]
do
	random=$(( RANDOM % ($max+1)))
	total=$(( $total + 1 ))
	for(( i=0; i<$len; i++ )) do
		if [ $random -eq ${arr[$i]} ]
		then
			hit=$(( $hit + 1 ))
			arr[$i]=-1
		fi
	done 
done 
echo "total number of random number generated is : $total "
