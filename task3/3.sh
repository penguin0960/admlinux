obxod()
{
echo $1
for name in $(ls $1)
do
if [ -d "$1/$name" ]
then
obxod "$1/$name"
fi
done
}

obxod $1
