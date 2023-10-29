if test $# -ne 1
then
	echo "please enter number"
	exit
fi

x=`echo $1 | grep "^[0-9]\+$" | wc -l`

if [ $x -eq 0 ]
then
	echo "enter number only"
	exit
fi

if test $1 -gt 10
then echo "bigger number"

else if test $1 -lt 5
then echo "lower number"

else echo "in between 5 and 10"
fi
fi
