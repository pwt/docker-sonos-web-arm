# Dockerfile to build an arm32v7 image on an x86 build host

FROM balenalib/raspberrypi3-debian-node
# Balena base image required for cross-build capabilities

### Run commands within QEMU ARM cross-build emulation
RUN [ "cross-build-start" ]

RUN npm install -g sonos-web-cli
RUN sonos-web install

RUN [ "cross-build-end" ]
### End QEMU ARM emulation

EXPOSE 5050

# HEALTHCHECK --interval=1m --timeout=2s \
#   CMD curl -LSs http://localhost:5050 || exit 1

CMD cd /root/.sonos-web && node src/server.js
