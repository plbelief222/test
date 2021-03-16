#!/bin/bash

IP_LIST="172.16.16.11 172.16.16.12 106.52.30.129"
for IP in $IP_LIST;
do
  NUM=1
  while [ $NUM -le 2 ];do

 if  ping -c 1 -W 1 $IP > /dev/null ;then
      
    echo "$IP ping is ok"
    break
 else
    FAIL_COUNT[$NUM]=$IP
    let NUM++
fi


done




if [ ${#FAIL_COUNT[*]} -eq 2 ];then

 
        echo "${FAIL_COUNT[2]} Ping is failure!"
 
        unset FAIL_COUNT[*]
 
    fi
 
done


