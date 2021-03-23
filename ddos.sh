#!/bin/bash

sleep 20
DATE=$(date +%d/%b/%Y:%H:%M)
#DATEE=$(date +%T_%F)
MAIL_IP=$(tail -n 5000 /var/log/nginx/access.log | grep $DATE | awk '{a[$1]++}END{for(i in a)if(a[i]>10)print i}')
#echo "${DATE}:$MAIL_IP:$DATEE" >> /root/mail.txt
for IP in $MAIL_IP;



do
    echo  "shili:$IP ddos_warnning $DATE" | mail -s "ddos_war" 414535771@qq.com
#    echo "$IP: $DATE"  >> /root/mail.txt
done
