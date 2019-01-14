# Docker Container Build of *Sonos-Web* for Raspberry Pi

**WORK-IN-PROGRESS** Sonos-Web is under development.

This Dockerfile builds a docker container version of Sonos-Web [1], suitable for use on a Raspberry Pi.

It has so far been tested on the following Raspberry Pi models:

* Raspberry Pi 3 Model B Rev 1.2 (a02082)
* Raspberry Pi 3 Model B Plus Rev 1.3 (a020d3)

In order to build for ARM on Docker Hub, the Dockerfile makes use of the *crossbuild* capabilities provided by the Resin Raspbian distribution [2], which allows ARM images to be built under x86. (If you want to use this Dockerfile to build directly on a native ARM device, comment out or delete the two `cross-build` RUN statements.)

The docker image name is `psychlist/docker-sonos-web-arm` on Docker Hub.

## Requirements

A working Docker environment. Internet access to pull the Docker image.

## Usage

The container is started as follows:

```
docker run -d \
  --net=host \
  --restart=always \
  --name=sonos-web \
  psychlist/docker-sonos-web-arm
  ```

## Links

[1] https://github.com/Villarrealized/sonos-web \
[2] https://hub.docker.com/r/resin/rpi-raspbian
