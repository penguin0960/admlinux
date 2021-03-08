if [ ! -d $1 ]
then
echo "$1 : incorrect path :("
exit 1
fi

if [ ! -d "result" ]
then
mkdir "result"
else
rm "result" -r
mkdir "result"
fi

for name in $(ls $1)
do

if [ -d "$1/$name" ]
then
echo $(ls "$1/$name" | wc -w) > "result/$name"
fi

done
