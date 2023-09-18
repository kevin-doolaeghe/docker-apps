# Docker applications & tools

:triangular_flag_on_post: **docker** & **docker-compose** application packages.

## Author

**Kevin Doolaeghe**

## Setup

```
docker-compose -p <package-name> up -d
```

:warning: These programs require a docker instance to be executed.

## Prerequisites

If you are installing applications individually, please ensure that the `local` network exists :
```
docker network ls
```

If not, then create it :
```
docker network create local
```
