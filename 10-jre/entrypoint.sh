#!/usr/bin/env sh

exec java -jar $JAVA_AGENT -XX:+IdleTuningGcOnIdle -Xtune:virtualized -Xscmx128m -Xscmaxaot100m -Xshareclasses:cacheDir=/opt/shareclasses $JAVA_OPTS $1 ${@:2}

