#!/bin/bash
# windchills program
echo "enter the double value  for t : "
read t
echo "t : $t"
echo "enter the double value for v : "
read v
echo "v : $v"
pow=$( echo "$v" "0.16" | awk '{ print $1**$2 }')
result=$( echo "34.74" "0.6215" "0.4275" "35.75" "$t" "$pow" "35.75" | awk '{print  $1 + ($2*$5) + (($3 * $5)-$7)*$6 }')
echo "result : $result"
