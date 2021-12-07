#! /bin/sh

set -e -x

MODE=frpc

if [ X"${1}" = X"main-start" ]; then
    exec /root/${MODE} -c /root/${MODE}.ini
else
    exec "${@}"
fi
