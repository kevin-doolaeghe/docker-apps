#!/bin/sh
docker compose -p zabbix -f ./docker-compose_v3_alpine_mysql_latest.yaml up -d
