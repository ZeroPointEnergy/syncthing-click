#!/bin/bash

# make sure syncthing gets started if it is not already
# running when starting the webui
pgrep -u $USER -x syncthing > /dev/null || syncthing -no-browser &

# wait until the web ui responds
until $(wget -O /dev/null -q http://127.0.0.1:8384); do sleep 1; done

# show the web ui in the webapp-container
webapp-container --webappUrlPatterns=https?://127.0.0.1:8384/* http://127.0.0.1:8384/ %u

