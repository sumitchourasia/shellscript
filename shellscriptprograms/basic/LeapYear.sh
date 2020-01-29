#!/bin/bash
## program to check if the entered year is a leap year
clear
# start #

echo "enter the year (must be of 4 digit)"
read year

if [ $((year / 1000)) -ge 1 ]
then
	if [ $(( year % 4 )) -eq 0 ]
	then
		if [ $(( year % 100 )) -eq 0 ]
		then
			if [ $(( year % 400 )) -eq 0 ]
			then
				echo " $year is a leap year "
			else
				echo " $year  is not a leap year "
			fi
		else
		echo " $year is not a leap year "
		fi
	else
	echo " $year is not a leap year "
	fi
else
echo "year should be of 4 digit number"
fi
# end #
