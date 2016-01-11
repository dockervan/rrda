FROM golang:alpine

MAINTAINER Sullivan SENECHAL <soullivaneuh@gmail.com>

RUN apk add --update --no-cache git mercurial \
&& go get github.com/fcambus/rrda \
&& apk del git mercurial

EXPOSE 80

CMD ["rrda", "-host=0.0.0.0", "-port=80"]
