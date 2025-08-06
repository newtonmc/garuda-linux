#!/bin/bash
# Enable Mozilla Sync

FIREDRAGONCFG="$HOME/.firedragon/firedragon.overrides.cfg"

mkdir -p "$HOME/.firedragon"

touch "$FIREDRAGONCFG"

CONF='lockPref("identity.sync.tokenserver.uri", "https://token.services.mozilla.com/1.0/sync/1.5")'

# Check if config already exists
if ! grep -Fxq "$CONF" "$FIREDRAGONCFG"; then
    echo "$CONF" >> "$FIREDRAGONCFG"    
    echo "Config done."
else
    echo "Config already exists."
fi
