#!/bin/bash

size=$1

for i in `seq $size`
do
	for j in `seq $size`
	do
		echo -n "A"
	done
	echo
done
