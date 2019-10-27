FROM golang:alpine
RUN apk update && apk add --virtual build-dependencies build-base git
ENV GOPATH /go
RUN mkdir -p /src/restfulHttpsProxy
ADD . /src/restfulHttpsProxy
WORKDIR /src/restfulHttpsProxy
ARG EXPOSED_API_PORT=9998
ARG PROXY_PORT=9999
EXPOSE ${EXPOSED_API_PORT}
EXPOSE ${PROXY_PORT}
CMD ["make"]
