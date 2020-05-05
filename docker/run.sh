#!/bin/bash

HERE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

BASE="`cat ${HERE}/BUILDER | cut -d':' -f1`"
VER="`cat ${HERE}/BUILDER | cut -d':' -f2`"
DIMG="$(docker images | grep ${BASE,,} | head -1 | awk '{print $1":"$2}')"

docker run \
        --privileged \
        --rm \
        -ti \
        --network host \
        ${DIMG} /bin/bash -c 'pulseaudio -D --system \
                              && (mkchromecast -c wav &) \
                              && while true; do echo "$(nc -l -p 22223)" || echo "EEK"; sleep 0.1; done'
