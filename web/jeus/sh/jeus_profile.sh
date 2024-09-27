#!/bin/bash

PROP_PATH=$JEUS_HOME/bin/jeus.properties

getProperty() {
	local PROP_NAME=$1
	local VALUE=$(grep "^$PROP_NAME" "$PROP_PATH" | cut -d '=' -f2)
	echo "$VALUE"
}

JEUS_USERNAME=$(getProperty "JEUS.USERNAME=")
JEUS_PASSWORD=$(getProperty "JEUS.PASSWORD=")
JEUS_HOST=$(hostname -i)
JEUS_PORT=9736
JEUS_DOMAIN=jeus_domain

export JEUS_USERNAME JEUS_PASSWORD JEUS_HOST JEUS_PORT JEUS_DOMAIN
