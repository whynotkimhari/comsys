file=$1

avg=`cat $file | awk 'BEGIN {count=0} {sum+=$1;count++} END {print sum/count}'`
echo $avg
