# Syncthing click package

This is a small script and some resources to assemble the syncthing
click package for ubports.

## Build package

You need to have the click tool installed. Then simply run the build
script with the desired version of syncthing:

    ./build.sh '0.14.31'

## Sources

The sources for syncthing can be found here: https://github.com/syncthing/syncthing .
The click package currently uses the prebuilt arm binaries.

src:
wget https://github.com/syncthing/syncthing/releases/download/v0.14.31/syncthing-linux-arm-v0.14.31.tar.gz
wget https://github.com/syncthing/syncthing/raw/master/assets/logo-512.png
