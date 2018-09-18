FROM debian:9-slim

RUN \
 apt-get -y update && \
 apt-get -y install wget && \
 wget -O gobgp.tar.gz https://github.com/osrg/gobgp/releases/download/v1.33/gobgp_1.33_linux_amd64.tar.gz && \
 tar xzf gobgp.tar.gz -C /usr/local/bin && \
 apt-get -y remove wget && \
 apt-get -y clean && \
 apt-get -y autoremove && \
 rm gobgp.tar.gz

EXPOSE 179

CMD [ "gobgpd" ]
