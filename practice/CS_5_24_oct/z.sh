file=$1
option=$2

case "$option" in
	-l)
		cat $file | wc -l
		;;
	-c)
		cat $file | wc -c
		;;
	-w)
		cat $file | wc -w
		;;
	*)
		echo "wrong"
		;;
esac
