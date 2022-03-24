#!/bin/bash

set -euo pipefail

origin=512x512

sizes=(
72x72
96x96
128x128
144x144
152x152
192x192
256x256
384x384
)

cd assets/icons/

for size in "${sizes[@]}"; do
  convert -gravity center \
    icon-"${origin}".png -resize "${size}" -extent "${size}" icon-"${size}".png
done
