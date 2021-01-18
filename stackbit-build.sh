#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://localhost:8092/init.js 6005f9836bcc9e5314fb4c7e

echo "stackbit-build.sh: finished build"
