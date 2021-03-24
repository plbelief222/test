#!/bin/bash

check_url(){
#NUM=0
HTTP_CODE=$(curl -o /dev/null --connect-timeout 3 -s -w "%{http_code}" $1)

    if [ $HTTP_CODE -eq 200 ];then
#             let NUM++
#             echo "$NUM $1"
#        if [ $NUM -eq 3 ];then   
           
            continue
#         fi
    fi

}
URL_LIST="www.baidu.com www.xxaaa.com"

for URL in $URL_LIST;do
       check_url $URL
       check_url $URL
       check_url $URL
     echo "warnning $URL fail"

done  
