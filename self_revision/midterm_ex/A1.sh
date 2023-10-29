#!/bin/bash

size=$#

if [ $size -eq 0 ]
then
	read num
	echo "5*$num*$num + 3*$num + 1" | bc
else
	echo "5*$1*$1 + 3*$1 + 1" | bc
fi
