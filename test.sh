#!/bin/sh -eux

apk add --no-cache \
    perl-dev \
    perl-utils; \
cpan -Ti Test::Nginx::Socket Test::File; \
echo done
