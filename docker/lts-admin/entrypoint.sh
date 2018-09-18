#!/usr/bin/env bash

if [ -z "$JVMFLAGS" ]; then
	JVMFLAGS=-Dfile.encoding=UTF-8
fi

CLASSPATH="$CLASSPATH:/lts/war/jetty/lib/*"
LTS_MAIN="com.github.ltsopensource.startup.admin.JettyContainer"

java -cp "$CLASSPATH" $JVMFLAGS $LTS_MAIN /lts