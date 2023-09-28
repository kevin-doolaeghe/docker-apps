# Nginx Proxy Manager

:triangular_flag_on_post: **Nginx Proxy Manager** application package.

## Author

**Kevin Doolaeghe**

## Setup

```
docker-compose -p nginxproxymanager up -d
```

:warning: This program require a docker instance to be executed.

## Default credentials

* Email address :
```
admin@example.com
```

* Password :
```
changeme
```

## Configuration

To connect the proxy to the other containers, it must be attached to the corresponding networks using the following command :
```
docker network connect <network> nginxproxymanager
```

## References

* [Nginx Proxy Manager](https://nginxproxymanager.com/)
* [Nginx Proxy Manager Tutorial (Youtube)](https://www.youtube.com/watch?v=qlcVx-k-02E&t=434s)
