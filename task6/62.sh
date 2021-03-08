if [ -f logs.log ]
then
rm logs.log
touch logs.log
else
touch logs.log
fi

for file in $(find /var/log -maxdepth 1 -name "*.log")
do

tail $file -n 1 >> logs.log

done

