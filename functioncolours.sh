#!/bin/bash
uid=$(id -u)
time=$(date +%F-%H-%M-%S )
scriptname=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$time-$scriptname.log

echo " script runtime is $time "

R="\e[31m"
G="\e[32m"
N="\e[0m"

func(){
        if [ $1 -ne 0 ]
        then
                echo -e " $2  is $R failed "
                exit 1

        else
                echo -e " $2 $G success "

      fi

    }

if [ $uid -ne 0 ]
then
        echo -e " run with root $R please $N thanks "
        exit 1
else
        echo -e " you are $G root $N thanks "

fi

 dnf install git -y &>>$logfile
func $?  "gitstatus"


#output
#script runtime is 2026-06-18-12-00-00 
#you are [GREEN]root[RESET] thanks
#gitstatus [GREEN]success[RESET]
#logs store in cat /tmp/2026-06-18-12-00-00-12-functioncolours.log