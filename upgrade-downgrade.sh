#!/bin/bash
action=$(ssh -i ~/.ssh/iut-ubuntu.pem ubuntu@3.209.244.52 "
if test -e /tmp/upgrade; then
  echo 'U'
elif test -e /tmp/downgrade; then
  echo 'D'
fi")
echo "Action: $action"
if [ "$action" = "U" ]; then
  ./small.sh 
elif [ "$action" = "D" ]; then
  ./micro.sh
fi
echo "Done"
