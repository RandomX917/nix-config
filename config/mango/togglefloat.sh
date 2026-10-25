#!/usr/bin/env bash

# 1. Fetch the JSON payload for all clients using 'mmsg get clients'
# 2. Find windows that are currently visible/active on your monitor
# 3. For each one, execute the exact dispatch command targeting its ID

mmsg get clients | jq -c '.[] | select(.is_visible == true and .is_floating == false)' | while read -r client; do
    id=$(echo "$client" | jq '.id')
    mmsg dispatch togglefloating client,"$id"
done

