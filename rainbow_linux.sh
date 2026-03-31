#!/bin/bash

if ! cat asciirainbow.txt > /dev/null; then
echo "Missing Text File."
exit 1
fi

colors=(
  "\e[31m"  # Red
  "\e[33m"  # Yellow
  "\e[32m"  # Green
  "\e[36m"  # Cyan
  "\e[34m"  # Blue
  "\e[35m"  # Magenta
)

while true; do
  for c in "${colors[@]}"; do
    echo -ne "${c}$(cat asciirainbow.txt)\e[0m\r"
    sleep 1
    clear
  done
done
