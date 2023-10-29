for i in `seq $1`
do
	if [ $i -eq 1 ]
	then
		for j in `seq $1`
		do
			echo -n "A"
		done
	else if [ $i -eq $1 ]
	then
		for j in `seq $1`
		do
			echo -n "A"
		done
	else
		for j in `seq $1`
		do
			if [ $j -eq 1 ]
			then
				echo -n "A"
			else if [ $j -eq $1 ]
			then
				echo -n "A"
			fi
				echo -n " "
			fi
		done
	fi
	fi
	echo
done
