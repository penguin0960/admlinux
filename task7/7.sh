filecnt()
{
cnt=0
for file in $(ls $1)
do
if [ -f $file ]
then
cnt=$(( $cnt + 1 ))
fi
done
echo $cnt
}


oldcnt=$(filecnt .)
newcnt=$oldcnt

while [ "$newcnt" -le "$oldcnt" ]
do

if [[ "$FOO" -eq "5" && "$BAR" -eq "1" ]]
then
echo 'FOO = 5 and BAR = 1 :('
exit 1
fi

if [ "$newcnt" -lt "$oldcnt" ]
then
oldcnt=$newcnt
fi

newcnt=$(filecnt .)
sleep 1

done


echo "New file detected"
