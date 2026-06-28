##!/bin/bash
user=(id -u)
dir=/var/log/sree
R="\e[31"
G="\e[32"
Y="\e[33"

if [ $user -ne 0 ]
then
echo " run the script with root user "
exit 1
else
echo " you are the root user "
fi 
if [ -d $dir "if exist " ]
then 
echo "$dir is exist already "
else
echo " $dir u can check again correct one "
fi
File=$(find $dir -name "*.log*" -mtime +10)
 while IFS= read -r line
do 
echo " print $line"
done



