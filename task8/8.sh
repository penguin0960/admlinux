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

modPATH=$(echo $PATH | sed 'y/:/ /')
for name in $modPATH
do
echo "$name: $(ls $name | wc -w) or $(filecnt $name) (?????)"
done
