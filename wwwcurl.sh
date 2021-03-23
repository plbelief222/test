#!/bin/bash

NUM=1
for i in {1..20};do


    for i in {1..200};
        do
    
        curl -vo /dev/null www.lpicloud.xyz &> /dev/null 
done

sleep  30

let NUM++


if [ $NUM -lt 20 ];then

echo  "it is $NUM"

else 


echo  "time 20" | mail -s "test 20" 414535771@qq.com


fi

done

