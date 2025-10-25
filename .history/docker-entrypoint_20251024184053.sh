#!/bin/sh
set -e

echo "Entrypoint: comprobando watchmedo..."
if command -v watchmedo >/dev/null 2>&1; then
  echo "watchmedo encontrado. Iniciando mkdocs con watchmedo (auto-restart)..."
  # Usamos --recursive y observamos todos los cambios (no filtramos por patrón) para evitar problemas
  # con la sintaxis de patrones en diferentes versiones de watchdog.
  exec watchmedo auto-restart --recursive -- mkdocs serve -a 0.0.0.0:8000
else
  echo "watchmedo no disponible. Usando watcher por polling (watch_poll_restart.py)..."
  exec python3 /usr/local/bin/watch_poll_restart.py
fi

