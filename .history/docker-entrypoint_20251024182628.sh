#!/bin/sh
set -e

echo "Entrypoint: comprobando watchmedo..."
if command -v watchmedo >/dev/null 2>&1; then
  echo "watchmedo encontrado. Iniciando mkdocs con watchmedo (auto-restart)..."
  exec watchmedo auto-restart --recursive --patterns="*.md;*.html;*.yml;*.css;*.js" -- mkdocs serve -a 0.0.0.0:8000
else
  echo "watchmedo no disponible. Iniciando mkdocs serve directamente..."
  exec mkdocs serve -a 0.0.0.0:8000
fi
