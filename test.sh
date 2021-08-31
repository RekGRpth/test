#!/bin/sh -eux

apk add --no-cache \
    curl \
    linux-headers \
    make \
    musl-dev \
    perl-dev \
    perl-utils \
; \
cpan -Ti Test::Nginx::Socket Test::File; \
echo done
