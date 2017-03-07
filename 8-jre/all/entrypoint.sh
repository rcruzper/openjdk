#!/usr/bin/env sh

# Signal propagation based on http://veithen.github.io/2014/11/16/sigterm-propagation.html
trap 'kill -TERM $PID' TERM INT

java -jar $JAVA_AGENT $JAVA_OPTS $1 ${@:2} &
PID=$!

wait $PID
trap - TERM INT
wait $PID

EXIT_STATUS=$?
