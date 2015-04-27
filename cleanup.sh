#!/bin/bash
set -e
source /build/buildconfig
set -x

apt-get clean
rm -rf /build
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*
rm -f /etc/dpkg/dpkg.cfg.d/02apt-speedup


# vim:set ai et ts=4 sw=4 sts=4 fenc=utf-8:
