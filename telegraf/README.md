# Telegraf

:triangular_flag_on_post: **Telegraf** application package.

## Author

**Kevin Doolaeghe**

## Setup

```
docker-compose -p telegraf up -d
```

:warning: This program require a docker instance to be executed.

## Configuration

* Sample `telegraf.conf` file :
```
[global_tags]

[agent]
  interval = "60s"
  round_interval = true
  metric_batch_size = 1000
  metric_buffer_limit = 10000
  collection_jitter = "0s"
  flush_interval = "10s"
  flush_jitter = "0s"
  precision = ""
  hostname = ""
  omit_hostname = false

[[outputs.influxdb]]
  urls = ["http://influxdb:8086"]
  database = "influxdb"
  timeout = "5s"
  username = "admin"
  password = "admin"

[[inputs.cpu]]
  percpu = true
  totalcpu = true
  collect_cpu_time = false
  report_active = false

[[inputs.disk]]
  ignore_fs = ["tmpfs", "devtmpfs", "devfs", "iso9660", "overlay", "aufs", "squashfs"]

[[inputs.mem]]

[[inputs.processes]]
```

## References

* [Telegraf](https://www.influxdata.com/time-series-platform/telegraf/)