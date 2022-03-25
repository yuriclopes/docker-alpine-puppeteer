# Alpine Puppeteer

[![Build](https://github.com/yuriclopes/docker-alpine-puppeteer/actions/workflows/build.yml/badge.svg)](https://github.com/yuriclopes/docker-alpine-puppeteer/actions/workflows/build.yml)
- Latest Alpine image with Puppeteer and Chromium Browser

## Tags

  - `latest`: Latest stable version

## How to Build

This image is built on Docker Hub automatically, but if you need to build the image on your own locally, do the following:

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. `cd` into this directory.
  3. Run `docker build -t alpine-puppeteer:test .`

## How to Use

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Pull this image from Docker Hub: `docker pull yuriclopes/alpine-puppeteer:latest` (or use the image you built earlier, e.g. `alpine-puppeteer:test`).
  3. Run a container from the image: `docker run --detach yuriclopes/alpine-puppeteer:latest YOUR_COMMAND`.

> **Important Note**: I use this image for testing. Use on production at your own risk!

## Author

Created in 2022 by Yuri Corona Lopes.