#!/bin/bash

########
# How to use
# ./instances_under_elb.sh <elb-name>
#######

elb_name=$1
aws elb describe-load-balancers --load-balancer-name $elb_name | jq -r '.LoadBalancerDescriptions[].Instances[].InstanceId'
