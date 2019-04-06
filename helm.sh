#!/usr/bin/env bash
set -euo pipefail
platform=$(uname)
if [ "$platform" == "Darwin" ]; then
    BINARY=external/helm_osx/darwin-amd64/helm
elif [ "$platform" == "Linux" ]; then
    BINARY=external/helm/linux-amd64/helm
else
    echo "Buildifier does not have a binary for $platform"
    exit 1
fi

$BINARY $*
