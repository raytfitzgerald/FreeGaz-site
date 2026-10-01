#!/bin/sh
# Renders og/card.html to assets/img/og.png (1200×630), the link-preview image.
set -e
cd "$(dirname "$0")/.."
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --disable-gpu --hide-scrollbars \
  --allow-file-access-from-files --window-size=1200,630 --force-device-scale-factor=1 \
  --virtual-time-budget=3000 --screenshot="$PWD/assets/img/og.png" "file://$PWD/og/card.html" 2>/dev/null
echo "wrote assets/img/og.png"
