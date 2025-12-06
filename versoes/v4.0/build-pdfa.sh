#!/bin/bash

set -e

MASTER="master-inline.md"
TEMPLATE="template.tex"
META="metadata.yaml"
OUTPUT="lichtara-license-v4.pdf"

echo "🔧 Building Lichtara License v4 (PDF/A)..."

pandoc $MASTER \
  --from markdown \
  --output=$OUTPUT \
  --template=$TEMPLATE \
  --metadata-file=$META \
  --pdf-engine=xelatex \
  --pdf-engine-opt=--pdfa \
  --toc \
  --toc-depth=3

echo "✅ PDF/A generated successfully for Zenodo: $OUTPUT"
