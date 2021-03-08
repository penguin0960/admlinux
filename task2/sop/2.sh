if [ -d $1 ]
then
if [ -d "result"]
then
else
mkdir result
fi
for name in $(ls $1)
do

if [ -d "$1/$name" ]
then
echo $(ls "$1/$name" | wc -w) > $name
fi

done

else
echo "'$1' incorrect path"
fi
