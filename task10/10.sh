val=$(env | grep LC_ | tail -n 1)
val=${val#*=}

for str in $(env | grep LC_)
do

ival=${str#*=}

if [ $val != $ival ]
then
echo "ERROR :("
exit 1
fi

done

echo "OK :)"
