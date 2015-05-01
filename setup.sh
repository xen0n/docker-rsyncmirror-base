#!/bin/bash
set -e
source /build/buildconfig
set -x

# read in mirror config
# TODO: version checking
source /build/mirror-config

# set up script
sed_command="s/@ENABLE_EMAIL@/${enable_email}/;"
sed_command="${sed_command} s/@ADMIN_EMAIL@/${admin_email}/;"
sed_command="${sed_command} s#@SYNC_REMOTE@#${sync_remote}#;"
sed_command="${sed_command} s#@MIRROR_PATH@#${mirror_path}#;"
sed_command="${sed_command} s/@MIRROR_NAME@/${mirror_name}/;"

sed_script "${sed_command}" mirror-sync.sh
sed_script "${sed_command}" initial-sync.sh


# vim:set ai et ts=4 sw=4 sts=4 fenc=utf-8:
