file=$1

lines=`cat $file | wc -l`
echo "There are $lines lines in $file"

chars=`cat $file | wc -m`
echo "There are $chars chars in $file"

words=`cat $file | wc -w`
echo "There are $words words in $file"

up=`cat $file | tr "a-z" "A-Z"`
low=`cat $file | tr "A-Z" "az"`

echo "up is $up"
echo "low is $low"

spaces=`cat $file | grep -o " " | wc -l`
echo "number of spaces in $file: $spaces"
