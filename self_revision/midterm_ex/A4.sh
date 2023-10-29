file=$1
cat $file | awk 'NR % 2 == 1' "$file"
