#!/bin/bash
#BASH script to ssh into webserver (tbweb-1) and check if nginx service is running.
#If it already is, it will print that the service is running, otherwise it will start nginx
service=nginx
ssh -i "tvn2one.pem.txt" -t ec2-user@172.31.89.175
if (( $(ps -ef | grep -v grep | grep $service | wc -l) = 7 ))
then
echo "booyah!! $service is running!!!"
else
/etc/init.d/$service start
fi
