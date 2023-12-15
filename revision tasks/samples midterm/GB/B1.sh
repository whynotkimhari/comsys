if [ $# -eq 3 ]
then
	for num in $*
	do 
		echo $num >> tmp.txt
	done
else if [ $# -eq 2 ]
then
	read num3
	echo $1 >> tmp.txt
	echo $2 >> tmp.txt
	echo $num3 >> tmp.txt
else if [ $# -eq 1 ]
then 
	read num2
	read num3
	echo $1 >> tmp.txt
	echo $num2 >> tmp.txt
	echo $num3 >> tmp.txt
else if [ $# -eq 0 ]
then
	read num1
	read num2
	read num3
	echo $num1 >> tmp.txt
	echo $num2 >> tmp.txt
	echo $num3 >> tmp.txt
else echo "Please do not enter more than 3 num"
fi
fi
fi
fi

cat tmp.txt | sort -g
rm tmp.txt
