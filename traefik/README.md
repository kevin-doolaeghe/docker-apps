# Traefik

:triangular_flag_on_post: **Traefik** application package.

## Author

**Kevin Doolaeghe**

## Setup

```
docker-compose -p traefik up -d
```

:warning: This program require a docker instance to be executed.

## Configuration

Add following labels to containers :

| Name | Value |
| --- | --- |
| `traefik.enable` | `true` |
| `traefik.http.routers.<package-name>.entrypoints` | `web, websecure` |
| `traefik.http.routers.<package-name>.rule` | ``Host(\`kde.<package-name>.com\`)`` |
| `traefik.http.routers.<package-name>.tls` | `true` |
| `traefik.http.routers.<package-name>.tls.certresolver` | `production` |

## References

* [Docker Traefik](https://doc.traefik.io/traefik/getting-started/quick-start/)
* [Youtube - Traefik tutorial](https://www.youtube.com/watch?v=wLrmmh1eI94)
