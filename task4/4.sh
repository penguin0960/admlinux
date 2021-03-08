for file in $@
do
if [ -f $file ]
then
echo "$file: $(cat $file | wc -l) lines"
else
echo "$file: no such file :("
fi
done
