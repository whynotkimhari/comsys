F=$1
W=$2

if [ ! -f $F ]
then
	echo file $F does not exist!
	exit
fi

cnt=`cat $F | grep "^$W " | wc -l`
echo $cnt
