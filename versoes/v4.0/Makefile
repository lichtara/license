# -------------------------------------------------------------
# LICHTARA LICENSE v4 — MAKEFILE
# Sistema de build para PDF e PDF/A
# -------------------------------------------------------------

MASTER = master-inline.md
TEMPLATE = template.tex
META = metadata.yaml
OUTPUT = lichtara-license-v4.pdf

# -------------------------------------------------------------
# Comandos principais
# -------------------------------------------------------------

pdf:
	@echo "🔧 Building standard PDF..."
	pandoc $(MASTER) \
		--from markdown \
		--output=$(OUTPUT) \
		--template=$(TEMPLATE) \
		--metadata-file=$(META) \
		--pdf-engine=xelatex \
		--toc \
		--toc-depth=3
	@echo "✅ PDF generated: $(OUTPUT)"

pdfa:
	@echo "🔧 Building PDF/A (Zenodo-ready)..."
	pandoc $(MASTER) \
		--from markdown \
		--output=$(OUTPUT) \
		--template=$(TEMPLATE) \
		--metadata-file=$(META) \
		--pdf-engine=xelatex \
		--pdf-engine-opt=--pdfa \
		--toc \
		--toc-depth=3
	@echo "✅ PDF/A generated: $(OUTPUT)"

# -------------------------------------------------------------
# Utilitários
# -------------------------------------------------------------

clean:
	@echo "🧹 Cleaning files..."
	rm -f $(OUTPUT)
	@echo "🧼 Clean complete."

validate:
	@echo "🔍 Validating existence of required files..."
	@if [ ! -f $(MASTER) ]; then echo "❌ Missing $(MASTER)"; exit 1; fi
	@if [ ! -f $(TEMPLATE) ]; then echo "❌ Missing $(TEMPLATE)"; exit 1; fi
	@if [ ! -f $(META) ]; then echo "❌ Missing $(META)"; exit 1; fi
	@echo "✅ All required files exist."

all: validate pdf
