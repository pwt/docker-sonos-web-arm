# Build for arm32v7 platforms

FROM arm32v7/node

RUN npm install -g sonos-web-cli
RUN sonos-web install

EXPOSE 5050

HEALTHCHECK --interval=1m --timeout=2s \
  CMD curl -LSs http://localhost:5050 || exit 1

CMD cd sonos-web && node src/server.js
