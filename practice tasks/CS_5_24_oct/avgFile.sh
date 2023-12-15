#!/bin/bash

while read a; read b; read c; read d
do
	avg=`(echo "scale=2; ($a+$b+$c+$d)/4)") | bc`
	echo $avg

done < number.txt
