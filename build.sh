#!/bin/bash
set -e

VERSION=$1

SRC_DIR="syncthing-linux-arm-v${VERSION}"
SRC_URL="https://github.com/syncthing/syncthing/releases/download/v${VERSION}/${SRC_DIR}.tar.gz"
PNG_URL="https://github.com/syncthing/syncthing/raw/master/assets/logo-512.png"

wget -qO- $SRC_URL | tar xzv --transform "s/^${SRC_DIR}/src/" "${SRC_DIR}/syncthing"
wget -O src/syncthing.png $PNG_URL

sed -e "s/VERSION/${VERSION}/" src/manifest.json.in > src/manifest.json

click build src
