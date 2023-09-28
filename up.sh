#!/bin/sh

if [ $# -ne 1 ]; then
 echo "Usage: ./up.sh <app>"
 exit 1
fi

file="$1/docker-compose.yml"
docker-compose -p $1 -f $file up -d --build

exit 0
