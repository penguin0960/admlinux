last="w"
cat $1 | while read line; do
if [ -n "$line" ]
then
last="$line"
echo "lastline = $last"
fi
echo $line
done
echo "last = $last"


