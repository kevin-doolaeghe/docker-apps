# Traefik

:triangular_flag_on_post: **Traefik** application package.

## Author

**Kevin Doolaeghe**

## Setup

```
docker-compose -p <package-name> up -d
```

:warning: These programs require a docker instance to be executed.

## Configuration

Add following labels to containers :

| Name | Value |
| --- | --- |
| `traefik.enable` | `true` |
| `traefik.http.routers.<package-name>.entrypoints` | `web, websecure` |
| `traefik.http.routers.<package-name>.rule` | `Host('kde.<package-name>.com')` |
| `traefik.http.routers.<package-name>.tls` | `true` |
| `traefik.http.routers.<package-name>.tls.certresolver` | `production` |
