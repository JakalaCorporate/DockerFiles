FROM alpine:3

LABEL maintainer="noc@jakala.com"

ENV TZ=Europe/Rome
RUN apk add tzdata && cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && apk del tzdata

ENV PORT=3000

RUN apk add --update nodejs npm

WORKDIR /srv/node/app

EXPOSE $PORT
