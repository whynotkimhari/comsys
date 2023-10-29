#!/bin/bash

# for - loop

# this loop will print 3 times
for name in 1 2 3
do
	echo "ELTE,$name"
done

# seq : sequence

#--------------------------#

# first args is text
# second args is number

for n in `seq $2`
do
	echo $1
done


