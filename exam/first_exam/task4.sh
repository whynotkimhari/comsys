#!/bin/bash

num=$1
if [ $# -lt 1 ]
then
	read num
fi

echo `echo $num*2 | bc`
