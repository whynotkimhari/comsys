#!/bin/bash
echo "The first $2 lines are: " 
head -n $2 $1

echo "The last $2 lines are: "
tail -n $2 $1

echo "Sorting!"
(head -n $2 $1; tail -n $2 $1) | sort
