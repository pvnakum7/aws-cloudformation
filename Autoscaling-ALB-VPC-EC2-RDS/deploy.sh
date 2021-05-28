#!/bin/bash

if [[ "$1" == "create" ]]; then
   aws ec2 create-key-pair --key-name my-test-key --query 'KeyMaterial' --output text > my-test-key.pem
   aws cloudformation create-stack --stack-name myteststack --template-body file://./aws/cloudformtaion-stack.yaml --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND --parameters file://./aws/cf-stack-parameter.json
   exit;
fi

if [[ "$1" == "update" ]]; then
   aws cloudformation update-stack --stack-name myteststack --template-body file://./aws/cloudformtaion-stack.yaml --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND --parameters file://./aws/cf-stack-parameter.json
   exit;
fi

if [[ "$1" == "delete" ]]; then
   aws cloudformation delete-stack --stack-name myteststack
   aws ec2 delete-key-pair --key-name my-test-key
   rm -f my-test-key.pem
   exit;
fi

if [[ "$1" == "create-ec2-key" ]]; then
   aws ec2 create-key-pair --key-name my-test-key --query 'KeyMaterial' --output text > my-test-key.pem
   exit;
fi

if [[ "$1" == "delete-ec2-key" ]]; then
   aws ec2 delete-key-pair --key-name my-test-key
   exit;
fi
