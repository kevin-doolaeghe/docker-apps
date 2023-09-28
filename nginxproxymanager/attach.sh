#!/bin/sh

if [ $# -ne 1 ]; then
 echo "Usage: ./attach.sh <app>"
 exit 1
fi

network="$1_local"
docker network connect $network nginxproxymanager

exit 0
