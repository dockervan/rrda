FROM golang:alpine

MAINTAINER Sullivan SENECHAL <soullivaneuh@gmail.com>

RUN apk add --update git mercurial && rm -rf /var/cache/apk/*

RUN go get github.com/fcambus/rrda

EXPOSE 80

CMD ["rrda", "-port=80"]
