#!/bin/bash -x


HOST=$1
REMOTE_USER=$2
REMOTE_PATH=$3
LOCAL_PATH=$4

unset $HOST
unset $REMOTE_USER

rsync -avzr \
      --exclude="wf" \
      --include="*/" \
      --include="vectors.npy" \
      --exclude="*" \
      -O \
      $REMOTE_PATH/ $LOCAL_PATH/

