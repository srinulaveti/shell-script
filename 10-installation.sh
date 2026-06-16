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

if [ $? eq 0 ]
then 
echo " my sql installed sucesss"
else
echo " mysql failed "
if

