#!/bin/bash
uid=$(id -u)
if [ $uid -ne 0 ]
then 
echo  " run this script with root user"
exit 0
else 
echo "its rootuser"
exit 1
fi

dnf install mysql -y

if [ $? eq 0 ]
then 
echo " my sql installed sucesss"

else
echo " mysql failed "
if

dnf install git -y

if [ $? eq 0 ]
then 
echo " git installed sucessfully srinu"
exit 0
else
echo " git failed srinu"
exit 1
fi

