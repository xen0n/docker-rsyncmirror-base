#!/bin/bash
set -e
source /build/buildconfig
set -x

enable_email=0
admin_email=
sync_remote=rsync://archive.ubuntu.com/ubuntu
mirror_path=/data/ubuntu
mirror_name=ubuntu

common_deps="rsync nginx"
mail_deps="mailx"

if [[ $enable_email == '1' ]] ; then
    deps="${common_deps} ${mail_deps}"
else
    deps="${common_deps}"
fi

$minimal_apt_get_install $deps


# vim:set ai et ts=4 sw=4 sts=4 fenc=utf-8:
