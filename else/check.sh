#!/bin/sh
t=0
while [ 1 ]
do
  ps -fe|grep firefox |grep -v grep
  if [ $? -ne 0 ]
  then
  echo "start firefox ..."
  firefox &> /dev/null &
  else
  echo "firefox is running"
  fi
  sleep 30
  t=$(( $t+1 ))

  if [ $t -gt 360 ]
  then
  pkill firefox
  t=0
  fi

done
#####
