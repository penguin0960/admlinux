timer=$2
> $1
while [ "$timer" -ne "0" ]
do
echo "$(date +'%d.%m.%Y %H:%M') = $(cat /proc/loadavg)" >> $1
timer=$(( $timer - 1 ))
sleep 1
done
cat $1

