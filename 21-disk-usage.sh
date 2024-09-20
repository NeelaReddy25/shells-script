#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THERSHOLD=6
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THERSHOLD ]
    then
        MESSAGE="$FOLDER is more than $DISK_THERSHOLD, current usage: $USAGE"
    fi
done <<< $DISK_USAGE

echo "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "Disk Usage Alert" neelareddy.i25@gmail.com

# echo "body" | mail -s "subject" to-address