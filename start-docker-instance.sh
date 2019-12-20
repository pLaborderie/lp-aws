export AWS_PROFILE=iut
aws ec2 run-instances --image-id ami-04b9e92b5572fa0d1 --key-name iut-ubuntu --instance-type t2.micro --security-group-id sg-00aca7d23242f092a --user-data file://install-docker.txt
