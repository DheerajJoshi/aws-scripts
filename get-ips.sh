aws-ips () {
  aws --output text --region ap-southeast-1 ec2 describe-instances --filters "Name=tag:Name,Values=${1}" | grep -i --color PRIVATEIPADDRESSES | awk '{ print $4 }' | tr '\n' ' '
}

###
# How to use it
# for i in $(aws-ips <name-of-instances>); do ssh ubuntu@$i crontab -l; done
###
