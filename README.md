# GoCD Agent with Node Docker Image

[![dockeri.co](https://dockeri.co/image/smartassist/gocd-agent-node)](https://hub.docker.com/r/smartassist/gocd-agent-node)

[![Docker Hub Automated](https://img.shields.io/docker/cloud/automated/smartassist/gocd-agent-node.svg?style=flat-square&logo=docker "GitHub issues")](https://hub.docker.com/r/smartassist/gocd-agent-node)
[![Docker Hub Build Status](https://img.shields.io/docker/cloud/build/smartassist/gocd-agent-node.svg?style=flat-square&logo=docker "GitHub stars")](https://hub.docker.com/r/smartassist/gocd-agent-node)

[GoCD Agent on Alpine](https://hub.docker.com/r/gocd/gocd-agent-alpine-3.12) with the latest version of Node added to
it.

## Usage

- To use in your docker-compose.yml:

```yaml
version: "3.8"

services:
  gocd-agent-node:
    image: smartassist/gocd-agent-node:v20.10.0
    restart: unless-stopped
    env_file: .env
```

- To modify further, reference in your Dockerfile:

```dockerfile
FROM smartassist/gocd-agent-node:v20.10.0
```

## Contents

- [GoCD's official Alpine agent's Dockerfile](https://hub.docker.com/r/gocd/gocd-agent-alpine-3.12)
- [Node's official Dockerfile](https://github.com/nodejs/docker-node/raw/master/15/alpine3.12/Dockerfile)

## Versions

| Runtime    | Version |
|------------|---------|
| OS      | Alpine 3.12  |
| GoCD agent | v20.10.0 |
| Node       | 15.5.0  |

## Building

- Update versions in `generate.sh`
- Run `bash generate.sh`
