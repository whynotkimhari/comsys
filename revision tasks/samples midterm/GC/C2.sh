max=`echo $1*3 + 4 | bc`
for i in `seq 3 4 $max`
do
	echo $i
done
