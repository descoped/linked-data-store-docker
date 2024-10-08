#!/usr/bin/env sh

if [ "$JAVA_MODULE_SYSTEM_ENABLED" == "true" ]; then
  echo "Starting java using MODULE-SYSTEM"
  export JPMS_SWITCHES=""
  exec java $JPMS_SWITCHES -p /lds/lib -m io.descoped.lds.server/io.descoped.lds.server.Server
else
  echo "Starting java using CLASSPATH"
  exec java -cp "/lds/lib/*" io.descoped.lds.server.Server
fi
