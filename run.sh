#!/bin/bash

ips=`cat iplist.txt`
plink="/usr/bin/plink"

for ip in $ips
do
echo $ip
$plink -l test -pw test $ip < commands.txt > $ip.log
done
