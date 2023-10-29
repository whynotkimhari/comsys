gcd() {
	if [ $2 -eq 0 ]
	then
		echo $1
		exit
	fi
	num=`echo $1%$2 | bc`
	gcd $2 $num
}
gcd $1 $2
