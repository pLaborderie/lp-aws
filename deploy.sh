#!/bin/bash
export AWS_PROFILE=iut
aws ec2 run-instances --image-id ami-06f58393de747fe22 --count 1 --instance-type t2.micro --key-name iut-ubuntu --security-group-ids sg-00aca7d23242f092a --subnet-id subnet-4df7e063
