#!/bin/bash

clear

#ERRORS
if ! cat asciirainbow.txt > /dev/null; then
echo "Missing Text File."
exit 1
fi

#Define colors
colors=(
  "\e[31m"       # Red
  "\e[38;5;208m" # Orange
  "\e[33m"       # Yellow
  "\e[32m"       # Green
  "\e[36m"       # Cyan / Light Blue
  "\e[34m"       # Blue
  "\e[35m"       # Violet
)

#Rainbow function
rainbow() {
    for c in "${colors[@]}"; do
        echo -e "${c}$(echo "ooooooooo.         .o.       ooooo ooooo      ooo oooooooooo.    .oooooo.   oooooo   oooooo     oooo ")\e[0m\r"
        echo -e "${c}$(echo ".888   .Y88.      .888.      .888. .888b.     .8. .888.   .Y8b  d8P.  .Y8b   .888.    .888.     .8.  ")\e[0m\r"
        echo -e "${c}$(echo " 888   .d88.     .88888.      888   8 .88b.    8   888     888 888      888   .888.   .8888.   .8.   ")\e[0m\r"
        echo -e "${c}$(echo " 888ooo88P.     .8. .888.     888   8   .88b.  8   888oooo888. 888      888    .888  .8..888. .8.    ")\e[0m\r"
        echo -e "${c}$(echo " 888.88b.      .88ooo8888.    888   8     .88b.8   888    .88b 888      888     .888.8.  .888.8.     ")\e[0m\r"
        echo -e "${c}$(echo " 888  .88b.   .8.     .888.   888   8       .888   888    .88P .88b    d88.      .888.    .888.      ")\e[0m\r"
        echo -ne "${c}$(echo "o888o  o888o o88o     o8888o o888o o8o        .8  o888bood8P.   .Y8bood8P.        .8.      .8.       ")\e[0m\r"
        sleep 1
        clear
    done
}

#Display rainbow
index=$(( $1 + 0 ))
if [[ $1 > "" ]]; then
    while [[ $index > 0 ]]; do
        rainbow
        (( index-- ))
    done
else
  while true; do
      rainbow
      (( index-- ))
  done
fi
