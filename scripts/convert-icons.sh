#!/usr/bin/env bash
set -euo pipefail

icons=(website email github linkedin)

for icon in "${icons[@]}"; do
  if [[ ! -f "icons/${icon}.svg" ]]; then
    echo "Missing icons/${icon}.svg"
    exit 1
  fi
  inkscape "icons/${icon}.svg" --export-type=pdf --export-filename="icons/${icon}.pdf"
  echo "Generated icons/${icon}.pdf"
done
