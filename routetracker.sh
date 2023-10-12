#!/bin/bash
##########################
#  Author:- Rajesh Kumar
#  Date:- 12/oct/2023
#  version:- v1
#  This script will report the AWS Resource Usage
#########################
# Resources we are going to track are 
#aws s3
#aws ec2
#aws lambda
#aws iam users
## list s3 buckets
echo "print list of s3 bucket"
aws s3 ls >>routetr       #routetr is the file name where we want to save this output in which everyone check in later

## list ec2 instances
echo "print list of ec2 instances"
aws ec2 describe-instances >>routetr

## list of aws lambda function
echo "print list of lambda function"
aws lambda list-functions >>routetr

##list IAM users
echo "print list of IAM users"
aws iam list-users >>routetr

