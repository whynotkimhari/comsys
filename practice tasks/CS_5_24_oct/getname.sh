if [ $# -ne 1 ]
then
	echo "Give your uni's name"
	read name
	echo "Uni's name: $name"

else
	echo "Uni's name: $1"

fi
