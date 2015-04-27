#!/bin/bash
set -e
source /build/buildconfig
set -x

enable_email=0
admin_email=
sync_remote=
mirror_path=/data/ubuntu

common_deps="rsync nginx"
mail_deps="mailx"

if [[ $enable_email == '1' ]] ; then
    deps="${common_deps} ${mail_deps}"
else
    deps="${common_deps}"
fi

$minimal_apt_get_install $deps


# set up script
sed_command="s/@ENABLE_EMAIL@/${enable_email}/;"
sed_command="${sed_command} s/@ADMIN_EMAIL@/${admin_email}/;"
sed_command="${sed_command} s/@SYNC_REMOTE@/${sync_remote}/;"
sed_command="${sed_command} s/@MIRROR_PATH@/${mirror_path}/;"

sed_script "${sed_command}" ubuntu-mirror-sync.sh
sed_script "${sed_command}" initial-sync.sh


# vim:set ai et ts=4 sw=4 sts=4 fenc=utf-8:
