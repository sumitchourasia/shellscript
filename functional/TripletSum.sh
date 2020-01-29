#!/bin/bash
#sum of thre number is zero
clear
arr=()
echo "enter the length of array : "
read len
echo "input the array"
for (( i=0; i<$len; i++)) do 
	read arr[$i]
done

echo "entered array is : "
for (( j=0; j<$len; j++ )) do
 	printf "%d  "  "${arr[$j]}"
done

#echo "sum : "`$(( ${arr[1]}+${arr[2]}+${arr[3]} ))`
for (( i=0; i< $(($len-2)); i++)) do 
	for (( j=0; j<$(($len-1)); j++ )) do
		for (( k=0; k<$len; k++)) do
			a=${arr[$i]}
			b=${arr[$j]}
			c=${arr[$k]}
			if [ $a != $b ]; then
				if [ $b != $c ]; then 
					if [ $a != $c ]
					then
						if [ $(( $a + $b + $c)) -eq 0 ]
						then
							printf "%d ," "$a"
							printf "%d ," "$b"
							printf "%d " "$c"
							echo
						fi
					fi

				fi	
			fi
		done
	done	
done

