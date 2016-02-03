FROM golang:alpine

MAINTAINER Sullivan SENECHAL <soullivaneuh@gmail.com>

# Waiting PR: https://github.com/fcambus/rrda/pull/10
ENV GODEBUG "netdns=cgo"

RUN apk add --no-cache --virtual .build-deps git mercurial \
&& go get github.com/fcambus/rrda \
&& apk del .build-deps

EXPOSE 80

CMD ["rrda", "-host=0.0.0.0", "-port=80"]
