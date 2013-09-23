#!/bin/bash
#Exmaple script

#List of cisco devices IPs
ips=`cat iplist.txt`
#which plink
plink="/usr/bin/plink"
user="cisco"
password="password"

for ip in $ips
do
  #Execute commands from a file
  $plink -l $user -pw $password $ip < commands.txt > $ip.log
  #Backup config
  $plink -l $user -pw $password $ip "sh run" > $ip.config
  echo $ip done
done
