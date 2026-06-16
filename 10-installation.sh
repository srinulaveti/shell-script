#!/bin/bash
uid=$(id -u)
if [ $uid -ne 0 ]
then 
echo  " run this script with root user"
exit 1
else 
echo "its rootuser"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
echo " my sql installed failed"
exit 1

else
echo " mysql sucess "
fi 

dnf install git -y

if [ $? -ne 0 ] 
then 
echo " git installed failed sreenu "
exit 1
else
echo " git suceess srinu "
fi

