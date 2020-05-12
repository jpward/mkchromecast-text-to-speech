FROM ubuntu:18.04

ENV DEBIAN_FRONTEND="noninteractive"

ENV PKGS="python3-pychromecast espeak netcat"

RUN apt-get update && \
    apt-get install --no-install-recommends -y ${PKGS} && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

COPY chromecast_server.py /
