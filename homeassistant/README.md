# Home Assistant

:triangular_flag_on_post: **Home Assistant** application package.

## Author

**Kevin Doolaeghe**

## Setup

```
docker-compose -p homeassistant up -d
```

:warning: This program require a docker instance to be executed.

## Configuration

To access Home Assistant via a proxy, the `configuration.yaml` file must include the following options : 
```
http:
  use_x_forwarded_for: true
  trusted_proxies:
    - 172.X.0.X # Proxy IP address on Docker subnet 
```

## References

* [Home Assistant](https://www.home-assistant.io/)
* [Home Assistant - Docker Installation](https://www.home-assistant.io/installation/linux#docker-compose)
* [Home Assistant - Tuya Integration](https://www.home-assistant.io/integrations/tuya/)
* [Home Assistant - InfluxDB Integration](https://www.home-assistant.io/integrations/influxdb)
