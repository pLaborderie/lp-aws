export AWS_PROFILE=iut
aws ec2 stop-instances --instance-ids i-0b368f809da9cd8a6
sleep 30
aws ec2 modify-instance-attribute --instance-id i-0b368f809da9cd8a6 --instance-type "{\"Value\":\"t2.small\"}"
aws ec2 start-instances --instance-ids i-0b368f809da9cd8a6
sleep 30
ssh -i ~/.ssh/iut-ubuntu.pem ubuntu@3.209.244.52 "touch /tmp/downgrade"
