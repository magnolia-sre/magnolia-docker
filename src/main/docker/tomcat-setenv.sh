#!/usr/bin/env bash

#
# JVM settings
#
export CATALINA_OPTS="$CATALINA_OPTS \
    -server \
    $MONITORING_OPTS \
    -Djava.security.egd=file:/dev/./urandom"
