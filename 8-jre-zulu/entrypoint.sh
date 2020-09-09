#!/usr/bin/env sh

AGENT_PATH=$(echo $JAVA_AGENT|cut -d':' -f 2)
if [ -f "$AGENT_PATH" ]; then
    exec java -XX:TieredStopAtLevel=1 -jar $JAVA_AGENT $JAVA_OPTS $@
else
    exec java -XX:TieredStopAtLevel=1 -jar $JAVA_OPTS $@
fi
