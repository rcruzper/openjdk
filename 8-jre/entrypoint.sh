#!/usr/bin/env sh

AGENT_PATH=$(echo $JAVA_AGENT|cut -d':' -f 2)
if [ -f "$AGENT_PATH" ]; then
    exec java -jar $JAVA_AGENT $JAVA_OPTS $@
else
    exec java -jar $JAVA_OPTS $@
fi
