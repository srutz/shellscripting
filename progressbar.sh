#!/bin/bash

draw_progress_bar() {
  local -i percent=${1}
  local -i width=${2:-50}
  
  local blocks=(" " "▏" "▎" "▍" "▌" "▋" "▊" "▉" "█")
  
  local -i full_blocks=$((percent * width / 100))
  local bar=""
  for ((i=0; i < full_blocks; i++)); do
    bar="${bar}${blocks[8]}"
  done

  local -i remainder=$((percent * width * 8 / 100 - full_blocks * 8))
  if (( full_blocks < width )); then
    bar="${bar}${blocks[remainder]}"
  fi

  local -i w=$((width - full_blocks - 1))
  for ((i=0; i < w; i++)); do
    bar="${bar}${blocks[0]}"
  done

  local -i percent=$((percent * 100 / 100))
  printf "\rPercent: [%-${width}s] %3d%%" "${bar}" "$percent"
}

for ((step=0; step <= 100; step += 1)); do
  draw_progress_bar $step 50
  sleep 0.05
done
echo


