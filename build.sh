#!/bin/bash
set -e
AOSP_DIR="${HOME}/aosp"
LUNCH_TARGET="${1:-aosp_x86_64-phone-userdebug}"
JOBS="${2:-2}"

echo "Starting AOSP build: $LUNCH_TARGET with $JOBS jobs"
cd "$AOSP_DIR"
source build/envsetup.sh
lunch "$LUNCH_TARGET"
make -j"$JOBS"
echo "Build completed!"
