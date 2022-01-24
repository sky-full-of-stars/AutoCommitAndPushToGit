#!/bin/bash

#prints todays date
now=`date`
echo "commiting and pushing on: $now"

#commits
cd /Users/asuryana/Documents/CP/
git add Solutions/
git commit -m "auto commit from local cron"

#pushes and grabs result
notificationText=$(git push 2>&1)
titleText="cronJobUpdate"

#build notification to send with title
cmd="display notification "
cmd+="\"Message is "
cmd+=$notificationText
cmd+="\""
cmd+=" with title \""
cmd+=$titleText
cmd+="\""
#echo $cmd

#send notification
echo $cmd  | osascript
echo "--------------------------------------------------------------------------------------------------------------"