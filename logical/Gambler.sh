#!/bin/bash
#Gambler program
echo "enter the number of times to run the experiment : "
read times
echo "enter the Goal : "
read goal
win=0
bet=0
totalbets=0
while [ $times -gt 0 ]
do
echo "enter the stake : "
read stake
	while [ $stake -gt 0 -a $goal -gt $win ]
	do
		totalbets=$(( $totalbets + 1 ))
		echo "remaining stake : $stake"
		echo "place your bet (max 10) : "
		read bet
		random=$(( RANDOM % 11 ))
		if [ $bet -eq $random ]
		then
			echo "bet matched"
			stake=$(( $stake + 1 ))
			win=$(( $win + 1 ))
		else
			echo "bet didnot matched"
			stake=$(($stake - 1))
		fi
		if [ $goal -eq $win ]
		then
			break
		fi
	done
	if [ $goal -eq $win ]; then
		break
	fi
times=$(($times - 1))
done
echo "win : $win "
echo " totalbets : $totalbets "
