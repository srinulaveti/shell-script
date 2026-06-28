#!/bin/bash
set -e
user=$(id -u)
fun(){
    echo " failed at $1 : $2 "

    trap 'fun {$LINENO} "$BASH_COMMAND"'ERR
}
if [ $user -ne o ]
then 
echo " run the script with root user "
exit 1
else
echo " u r super user proceed "

dnf install wget -y 
echo " it is working srinu "