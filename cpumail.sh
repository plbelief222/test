#!/bin/bash

CPU_TOP=`ps aux | grep bc | awk  'NR==1{print int($3)}'`
#CPU_TOP=$(top -n 1 | awk 'NR==8{print int($9)}')
echo $CPU_TOP
#CPU_EX=`echo $CPU_TOP | awk '{print int($0)}'`


if [ $CPU_TOP -gt 90 ];then

echo  "$CPU_TOP:instence" | mail  -s  "cpu"  414535771@qq.com

fi

if [ $? -eq 0 ];then

echo "success"

fi
