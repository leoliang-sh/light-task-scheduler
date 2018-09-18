#!/usr/bin/env bash

if [ -z "$JVMFLAGS" ]; then
	JVMFLAGS=-Dfile.encoding=UTF-8
fi

CLASSPATH="$CLASSPATH:/lts/lib/*"
LTS_MAIN="com.github.ltsopensource.startup.jobtracker.JobTrackerStartup"

java -cp "$CLASSPATH" $JVMFLAGS $LTS_MAIN /lts
