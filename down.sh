#!/bin/sh

if [ $# -ne 1 ]; then
 echo "Usage: ./down.sh <app>"
 exit 1
fi

docker-compose -p $1 down

exit 0
