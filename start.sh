#!/bin/bash
java -cp com.microsoft.java.debug.core-0.9.0-jar-with-dependencies.jar:$JAVA_HOME/lib/tools.jar com.microsoft.java.debug.core.server.JavaDebugServer &
java -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=8000 -jar app.jar