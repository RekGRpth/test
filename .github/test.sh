#!/bin/sh -eux

docker run \
    --env LANG=ru_RU.UTF-8 \
    --env TZ=Asia/Yekaterinburg \
    --hostname nginx \
    --mount "type=bind,source=${GITHUB_WORKSPACE}/test.sh,destination=/usr/local/bin/test.sh,readonly" \
    --name nginx \
    --rm \
    ghcr.io/rekgrpth/nginx.docker test.sh
