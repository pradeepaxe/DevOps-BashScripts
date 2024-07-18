#!/bin/bash

#FREE_RAM=free -m  | grep MEM


echo "####################################"
echo "####################################"

curr_user=$(free -m | grep Mem | awk '{print $2}')
curr_hd=$(df -h | awk '{print $1}')


echo "$availble is $curr_user- $curr_hd"


