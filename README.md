# Centos for Molecule Tests

[![CI](https://github.com/yuriclopes/docker-centos-molecule-test/workflows/Build/badge.svg?branch=main&event=push)](https://github.com/yuriclopes/docker-centos-molecule-test/actions?query=workflow%3ABuild) [![Docker pulls](https://img.shields.io/docker/pulls/yuriclopes/centos-molecule-test)](https://hub.docker.com/r/yuriclopes/centos-molecule-test)

- centos 8 Docker container for Molecule Tests.
- centos 7 Docker container for Molecule Tests.

## Tags

  - `8`: Latest stable version for Centos 8 release
  - `7`: Latest stable version for Centos 7 release

## How to Build (Centos 8)

This image is built on Docker Hub automatically, but if you need to build the image on your own locally, do the following:

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. `cd` into this directory.
  3. Run `docker build -t centos-molecule-test:8 -f 8/Dockerfile .`

## How to Use (Centos 8)

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Pull this image from Docker Hub: `docker pull yuriclopes/centos-molecule-test:8` (or use the image you built earlier, e.g. `centos-molecule-test:8`).
  3. Run a container from the image: `docker run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro yuriclopes/centos-molecule-test:8`.

> **Important Note**: I use this image for molecule testing. Use on production at your own risk!

## Author

Created in 2022 by Yuri Corona Lopes.