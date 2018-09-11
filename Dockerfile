FROM golang:1.11.0

ENV GOPATH=/go
WORKDIR /go/src/github.com/osrg/gobgp/

ENV GOBGP_VERSION="v1.33"

RUN \
  wget -O gobgp.tar.gz https://github.com/osrg/gobgp/releases/download/v1.33/gobgp_1.33_linux_amd64.tar.gz && \
  tar xzf gobgp.tar.gz -C /usr/local/bin && \
  rm gobgp.tar.gz

EXPOSE 179

CMD [ "gobgpd" ]
