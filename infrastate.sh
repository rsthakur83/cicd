#!/bin/bash

terraform show|grep  VPC

if [ $? -eq 0 ]; then

echo "Already exist"

else
echo "Does not exist creating"
terraform init
terraform apply -var access="$AN_ACCESS_KEY" -var secret="$SECRET_KEY"
fi
