FROM alpine:latest

RUN \
  apk update && \
  apk add --no-cache \
    rsync && \
  rm -rf \
    /tmp/* \
    /var/tmp/* \
    /var/cache/apk/*

CMD rsync