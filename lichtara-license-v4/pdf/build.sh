#!/usr/bin/env bash

# ============================================================

# BUILD SCRIPT — LICHTARA LICENSE v4.0 (PDF OFICIAL)

# ============================================================

set -e

echo "🔵 Iniciando compilação da Lichtara License v4.0..."

# Caminhos

MASTER="master.md"
TEMPLATE="template.tex"
OUTPUT="LICENSE-v4.0.pdf"
LOG="build.log"

# Limpeza

rm -f "$OUTPUT" "$LOG"

echo "🔧 Compilando com Pandoc + XeLaTeX..."
pandoc "$MASTER" 
--from markdown 
--template="$TEMPLATE" 
--pdf-engine=xelatex 
-o "$OUTPUT" 
--verbose 2>&1 | tee "$LOG"

echo "✨ PDF gerado: $OUTPUT"
echo "📝 Log salvo em: $LOG"

# Hash de integridade

HASH=$(shasum -a 256 "$OUTPUT" | cut -d " " -f 1)
echo "🔐 SHA-256 do PDF: $HASH"

# Atualiza version-info.json automaticamente (se existir)

if [ -f "../version-info.json" ]; then
echo "Atualizando version-info.json..."
jq --arg hash "$HASH" '.pdf_sha256 = $hash' ../version-info.json > ../version-info.tmp 
&& mv ../version-info.tmp ../version-info.json
fi

echo "🌟 Compilação concluída com sucesso."
