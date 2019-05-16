#!/usr/bin/env sh

exec java -noverify -XX:TieredStopAtLevel=1 -jar $JAVA_AGENT $JAVA_OPTS $@
