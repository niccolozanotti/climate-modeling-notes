#!/bin/bash
# This script loops through the targets and builds each one

TARGETS=("gd" "nm" "cm")
for TARGET in "${TARGETS[@]}"; do
  echo "Building target: $TARGET"
  cmake --build . --target "$TARGET"

  if [ ! -f "build/$TARGET.pdf" ]; then
    echo "Error: $TARGET.pdf was not generated."
    exit 1
  fi
done