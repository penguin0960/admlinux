> logs.log

for file in $(find /var/log -maxdepth 1 -name "*.log")
do
tail $file -n 1 >> logs.log
done

