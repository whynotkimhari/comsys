sed -i "s/^$2/another/g" "$1"
sed -i "s/$2$/another/g" "$1"
cat $1
