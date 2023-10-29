var=`cat $1 | cut -f 2 -d ","`
sum=0
for i in $var
do
	sum=`echo $sum+$i | bc`
done
echo $sum
