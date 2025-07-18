#!/usr/bin/env bash

# Set your preferred location manually
LOCATION="Helsinki"  # or Espoo, Tampere, etc.

for i in {1..5}; do
  text=$(curl -s "https://wttr.in/${LOCATION}?format=1")
  if [[ $? == 0 && -n "$text" ]]; then
    text=$(echo "$text" | sed -E "s/\s+/ /g")
    tooltip=$(curl -s "https://wttr.in/${LOCATION}?format=4")
    if [[ $? == 0 && -n "$tooltip" ]]; then
      tooltip=$(echo "$tooltip" | sed -E "s/\s+/ /g")
      echo "{\"text\":\"$text\", \"tooltip\":\"$tooltip\"}"
      exit 0
    fi
  fi
  sleep 2
done

# Fallback output
echo '{"text":"󰅟 error","tooltip":"Could not fetch weather"}'
