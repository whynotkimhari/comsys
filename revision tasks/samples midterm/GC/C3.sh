if [ ! -f $1 ]
then
	echo The file $1 does not exist
	exit
fi

cat $1 | grep "^$2"
