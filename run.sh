#!/bin/bash

ips=`cat iplist.txt`
plink="/usr/bin/plink"
user="cisco"
password="password"

for ip in $ips
do
echo $ip
$plink -l $user -pw $password $ip < commands.txt > $ip.log
done
