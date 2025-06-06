#!/usr/bin/env sh
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
if [ -f "$DIR/gradle/wrapper/gradle-wrapper.jar" ]; then
    exec java -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
else
    echo "Gradle wrapper JAR missing" >&2
    exit 1
fi
