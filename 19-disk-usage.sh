#!/bin/bash
usage=$(df -hT |grep xfs)
limit=10
message=""
while IFS= read -r line
do 
folder=$(echo $line |awk -F " " '{print $NF}')
used=$(echo $line |awk -F " " '{print 6F}'|cut -d "%" -f1)
if [ $used -ge $limit ]
then
message+="$folder  is consumed more space need clear $limit and current it is $used \n"
fi
done <<< $usage  
echo -e "message :$message "
