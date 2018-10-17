#!/bin/bash -x


HOST=$1
REMOTE_USER=$2
REMOTE_PATH=$3
LOCAL_PATH=$4

unset $HOST
unset $REMOTE_USER

rsync -avz -O --remove-source-files $LOCAL_PATH/ $REMOTE_PATH/ 

rm -fr $LOCAL_PATH
