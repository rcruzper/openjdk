#!/usr/bin/env sh

exec java -jar $JAVA_AGENT $JAVA_OPTS $1 ${@:2}
