#!/bin/bash

echo "enter wordsand until match with the \"end\""
read word

while [ "$word" != "end" ]
do
	echo $word >> tmp.txt
	read word

done

if test -f tmp.txt
then

	sort tmp.txt
	rm tmp.txt
fi
