#!/bin/bash

# Stop on error
set -e

MASTER="master-inline.md"
TEMPLATE="template.tex"
META="metadata.yaml"
OUTPUT="lichtara-license-v4.pdf"

echo "🔧 Building Lichtara License v4 (PDF normal)..."

pandoc $MASTER \
  --from markdown \
  --output=$OUTPUT \
  --template=$TEMPLATE \
  --metadata-file=$META \
  --pdf-engine=xelatex \
  --toc \
  --toc-depth=3

echo "✅ PDF generated successfully: $OUTPUT"
