#!/bin/sh

service="$1"

set -e -u

if [ -z "$service" ]
then
	echo >&2 usage: $0 theunit.service
	exit 1
fi

override="/etc/systemd/system/$service.d/"

install -d -m 755 "$override"
install  "42-share-keyring.conf"  -m 755  "$override"

