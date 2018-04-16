#!/bin/bash
service=nginx
ssh -i "tvn2one.pem.txt" ec2-user@ec2-34-239-110-162.compute-1.amazonaws.com 'bash -s' < /home/scripts/script.sh
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$boo-yah!! the nginx service is running!!!"
else
/etc/init.d/$service start
fi