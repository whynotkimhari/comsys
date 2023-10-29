num1=$1
num2=$2

if [ $num1 -gt $num2 ]
then
	tmp=$num1
	num1=$num2
	num2=$tmp
fi

for i in `seq $num1 $num2`
do
	echo "$i*$i" | bc
done
