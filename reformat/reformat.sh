#!/bin/bash
set -e

echo ""
echo "=========================================="
echo "Running Black (code formatter)..."
echo "=========================================="
black src/

echo ""
echo "=========================================="
echo "Running docformatter (docstring formatter)..."
echo "=========================================="
docformatter \
  --in-place \
  --recursive \
  --wrap-summaries 72 \
  --wrap-descriptions 72 \
  src/ || true

echo ""
echo "=========================================="
echo "Running ruff --select I (import sorter)..."
echo "=========================================="
ruff check src/ --fix --select I

echo ""
echo "=========================================="
echo "Formatting complete!"
echo "=========================================="
