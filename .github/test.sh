#!/bin/sh -eux

docker run \
    --env LANG=ru_RU.UTF-8 \
    --env TZ=Asia/Yekaterinburg \
    --hostname nginx \
    --interactive \
    --mount type=bind,source=test.conf,destination=/home/test.sh,readonly \
    --name nginx \
    --rm \
    --tty \
    ghcr.io/rekgrpth/nginx.docker test.sh
