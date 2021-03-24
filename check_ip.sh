#!/bin/bash

CHECK_IP(){
  local  IP=$1
FIR_CH=$(echo $IP | awk -F. '$1<=255&&$2<=255&&$3<=255&&$4<=255{print "yes"}')
         
 echo $IP 
  if echo $IP | grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" >/dev/null;then
      if [[ $FIR_CH == "yes" ]];then
         echo "$IP is ok"      
         return 0
      else
         echo "$IP is not ok"
         return 1
       fi
  else  
      echo "format error"
         return 1
  fi
}



while true;do

  read -p "pleae enter IP:" IP
  CHECK_IP $IP
  [ $? -eq 0 ] && break || continue
done
