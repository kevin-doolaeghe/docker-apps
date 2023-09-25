# Zabbix

:triangular_flag_on_post: **Zabbix** application package.

## Author

**Kevin Doolaeghe**

## Setup

1. Pull `docker` image :
```
git clone https://github.com/zabbix/zabbix-docker.git
git checkout 6.4
```

2. Install `zabbix` application :
```
docker-compose -p zabbix up -d
```

:warning: This program require a docker instance to be executed.

## References

* [Zabbix](https://www.zabbix.com)
* [Zabbix - Docker Installation](https://www.zabbix.com/documentation/current/en/manual/installation/containers)
