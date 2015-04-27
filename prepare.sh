#!/bin/bash
set -e
source /build/buildconfig
set -x

## Temporarily disable dpkg fsync to make building faster.
if [[ ! -e /etc/dpkg/dpkg.cfg.d/docker-apt-speedup ]]; then
    echo force-unsafe-io > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup
fi

# configure mirror for apt-get
apt_mirror="http://cn.archive.ubuntu.com/"
sed -i "s@http://archive\\.ubuntu\\.com/@${apt_mirror}@" /etc/apt/sources.list
apt-get update


# vim:set ai et ts=4 sw=4 sts=4 fenc=utf-8:
