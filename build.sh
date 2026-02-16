#!/usr/bin/env bash
set -euo pipefail

# Output directory name, can be overridden with OUT_DIR env var
OUT_DIR="${OUT_DIR:-dist}"
TITLE="${TITLE:-Kubernetes Technical Primer}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "==> Building into '$OUT_DIR'"

# Clean previous build
rm -rf "$OUT_DIR"
mkdir "$OUT_DIR"

# Copy slides and HTML
cp slides/* "$OUT_DIR"
cp src/index.html "$OUT_DIR"

# Set page title
if [[ "$(uname)" == "Darwin" ]]; then
  sed -i '' "s/<title>Slides<\/title>/<title>${TITLE}<\/title>/" "$OUT_DIR/index.html"
else
  sed -i "s/<title>Slides<\/title>/<title>${TITLE}<\/title>/" "$OUT_DIR/index.html"
fi

# Generate thumbnail images for sidebar (much smaller than full PNGs)
# Requires ImageMagick (pre-installed on GitHub Actions ubuntu runners)
if command -v magick &>/dev/null; then
  CONVERT="magick"
elif command -v convert &>/dev/null; then
  CONVERT="convert"
else
  CONVERT=""
fi

if [[ -n "$CONVERT" ]]; then
  echo "==> Found image converter: $CONVERT"
else
  echo "==> No image converter found, skipping thumbnail generation"
fi

if [[ -n "$CONVERT" ]]; then
  echo "==> Generating thumbnails (using $CONVERT)"
  mkdir "$OUT_DIR/thumbs"
  for f in "$OUT_DIR"/Slide*.PNG; do
    $CONVERT -limit time 120 -limit memory 256MiB "$f" -resize 300x -quality 70 "$OUT_DIR/thumbs/$(basename "$f")"
  done
else
  echo "==> Skipping thumbnails (ImageMagick not found, install with: sudo apt install imagemagick)"
fi

# Generate manifest so the viewer doesn't need to probe slides one-by-one
SLIDE_COUNT=$(ls -1 "$OUT_DIR"/Slide*.PNG | wc -l)
echo "{\"total\": $SLIDE_COUNT}" > "$OUT_DIR/slides.json"

echo "==> Build complete: $SLIDE_COUNT slides"
ls -la "$OUT_DIR"
