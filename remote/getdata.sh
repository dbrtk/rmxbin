#!/bin/bash -x


HOST=$1
REMOTE_USER=$2
REMOTE_PATH=$3
LOCAL_PATH=$4


rsync -e "ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i /var/www/.ssh/id_rsa" \
      -avz \
      -O \
      $REMOTE_USER@$HOST:$REMOTE_PATH/ $LOCAL_PATH/

