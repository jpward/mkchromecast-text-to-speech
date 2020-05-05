FROM ubuntu:18.04

ENV DEBIAN_FRONTEND="noninteractive"

ENV PKGS="mkchromecast pulseaudio pulseaudio-utils espeak netcat"

RUN apt-get update && \
    apt-get install --no-install-recommends -y ${PKGS} && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN usermod -a -G pulse-access root
