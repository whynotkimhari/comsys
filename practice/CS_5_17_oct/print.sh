#!/bin/bash

file=$1
lines=$2

f_line=`cat $file | head -n $lines`

echo -e "The lines of the $file are \n$f_line"


















