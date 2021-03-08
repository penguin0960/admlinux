obxod()
{
for name in $(ls $1)
do
if [ -d "$1/$name" ]
then
echo $name
obxod "$1/$name"
fi
done
}

obxod $1
