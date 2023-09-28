#!/bin/sh

if [ $# -ne 1 ]; then
 echo "Usage: ./detach.sh <app>"
 exit 1
fi

network="$1_local"
docker network disconnect $network nginxproxymanager

exit 0
