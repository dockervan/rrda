FROM golang:alpine

MAINTAINER Sullivan SENECHAL <soullivaneuh@gmail.com>

# Waiting following PR to remove -tags netcgo option
# https://github.com/fcambus/rrda/pull/10
RUN apk add --no-cache --virtual .build-deps git mercurial gcc musl-dev \
&& go get -tags netcgo github.com/fcambus/rrda \
&& apk del .build-deps

EXPOSE 80

CMD ["rrda", "-host=0.0.0.0", "-port=80"]
