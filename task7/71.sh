oldls=''
for file in $(ls)
do
if [ -f $file ]
then
oldls="$oldls $file"
fi
done
echo $oldls
