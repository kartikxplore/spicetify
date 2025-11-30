#!/bin/bash
# 1. Apply the new colors
/usr/bin/spicetify apply -n

# 2. Kill Spotify quietly
killall -q spotify

# 3. Restart Spotify (using spotify-launcher) in the background
# 'nohup' ensures it keeps running even after this script finishes
nohup spotify-launcher > /dev/null 2>&1 &
