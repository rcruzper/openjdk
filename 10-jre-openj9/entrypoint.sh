#!/usr/bin/env sh
AGENT_PATH=$(echo $JAVA_AGENT|cut -d':' -f 2)
if [ -f "$AGENT_PATH" ]; then
    exec java -jar $JAVA_AGENT -XX:+IdleTuningGcOnIdle -Xtune:virtualized -Xscmx128m -Xscmaxaot100m -Xshareclasses:cacheDir=/opt/shareclasses $JAVA_OPTS $@
else
    exec java -jar -XX:+IdleTuningGcOnIdle -Xtune:virtualized -Xscmx128m -Xscmaxaot100m -Xshareclasses:cacheDir=/opt/shareclasses $JAVA_OPTS $@
fi
