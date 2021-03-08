func() {
if [ ! -d $1 ]
then
echo "$1 incorrect directory :("
exit 1
fi

if [ ! -d "founded" ]
then
mkdir "founded"
fi

for file in $(find $1 -maxdepth 1 -name "*.txt")
do
if [ -n "$(cat $file | grep 'find')" ]
then
name=${file##*/}
name=$(echo $name | sed s/txt/md/ )
cp $file founded/$name
fi
done
}

func $1 2>> errors.txt
