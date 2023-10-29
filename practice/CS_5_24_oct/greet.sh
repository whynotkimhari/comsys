#!/bin/bash

for id in `who | cut -f1 -d " "`
do
	user=`finger $id | head -1 | cut -f3 -d ":"`
	echo "Hi,$user"
done
