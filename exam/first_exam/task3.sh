#!/bin/bash

var=`cat task3_input.txt | cut -f 2 -d ,`
sum=0
for num in $var
do
	sum=`echo $sum+$num | bc`
done
echo $sum
