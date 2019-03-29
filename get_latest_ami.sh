#!/bin/bash

########
# How to use
# ./get_latest_ami.sh
#######

aws ec2 describe-images --filters "Name=tag:Branch,Values=master" "Name=tag:Name,Values=BaseAMI-14.04" "Name=tag:OSVersion,Values=14.04" --query 'Images[*].[Name,ImageId,CreationDate]' --output table | sort -r | head -n 5
