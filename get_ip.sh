#!/bin/bash

########
# How to use
# ./get_ip.sh <instance-name>
#######

instance_name=$1
aws ec2 describe-instances --filters Name=tag:Name,Values=$instance_name --query 'Reservations[].Instances[].[PrivateIpAddress,InstanceId,Tags[?Key==`Name`].Value[]]' --output text | sed 's/None$/None\n/' | sed '$!N;s/\n/ /'
