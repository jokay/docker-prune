# Docker prune

Multi-platform Docker image for Docker [prune](https://docs.docker.com/config/pruning).

## Information

| Service                                             | Stats                                                                                                                                                                                                                                                                                       |
|-----------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [GitHub](https://github.com/jokay/docker-prune)     | ![Last commit](https://img.shields.io/github/last-commit/jokay/docker-prune.svg?style=flat-square) ![Issues](https://img.shields.io/github/issues-raw/jokay/docker-prune.svg?style=flat-square) ![PR](https://img.shields.io/github/issues-pr-raw/jokay/docker-prune.svg?style=flat-square) |
| [Docker Hub](https://hub.docker.com/r/xjokay/prune) | ![Pulls](https://img.shields.io/docker/pulls/xjokay/prune.svg?style=flat-square) ![Stars](https://img.shields.io/docker/stars/xjokay/prune.svg?style=flat-square)                                                                                                                           |

## Usage

```sh
docker pull docker.io/xjokay/prune:latest
```

### Supported tags

| Tag       | Description                                                                                        |
|-----------|----------------------------------------------------------------------------------------------------|
| latest    | [Latest](https://github.com/jokay/docker-prune/releases/latest) release                            |
| {release} | Specific release version, see available [releases](https://github.com/jokay/docker-prune/releases) |

### Exposed Ports

None

### Volumes

| Directory            | Description                                               |
|----------------------|-----------------------------------------------------------|
| /var/run/docker.sock | Needs to be mounted in order to be able to prune objects. |

### Configuration

| ENV field | Req. / Opt. | Description                                                                                                                                                                            |
|-----------|-------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| INTERVAL  | *Optional*  | Interval of pruning, default is `86400` seconds (24h).                                                                                                                                 |
| OBJECTS   | *Optional*  | Objects to be pruned, default is `container volume image`. Additionally `network` can be added if desired (see samples).                                                               |
| OPTIONS   | *Optional*  | Additional [options](https://docs.docker.com/engine/reference/commandline/system_prune/#filtering) (default: none), e.g. `--filter until=24h` for objects created more than 1 day ago. |

## Samples

### docker-compose

```yml
services:
  app:
    image: docker.io/xjokay/prune:latest
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    environment:
      - INTERVAL=86400
      - "OBJECTS=container volume image network"
      - "OPTIONS=--filter until=24h"
    restart: always
```

### docker run

```sh
docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e INTERVAL=86400 \
  -e "OBJECTS=container volume image network" \
  -e "OPTIONS=--filter until=24h" \
  docker.io/xjokay/prune:latest
```
