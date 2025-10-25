#!/bin/sh
set -e

echo "Entrypoint: comprobando watchmedo..."
if [ "${USE_POLLING}" = "1" ]; then
  echo "USE_POLLING=1 -> forzando watcher por polling (watch_poll_restart.py)"
  exec python3 /usr/local/bin/watch_poll_restart.py
fi
echo "DEBUG: Lista inicial de /docs (primeras 200 entradas):"
ls -la /docs | sed -n '1,200p' || true
echo "DEBUG: Comprobando existencia de /usr/local/bin/watch_poll_restart.py"
if [ -f /usr/local/bin/watch_poll_restart.py ]; then
  echo "DEBUG: watch_poll_restart.py existe"
else
  echo "DEBUG: watch_poll_restart.py NO existe"
fi
echo "DEBUG: Versión de python:" $(python3 --version 2>/dev/null || echo "python no encontrado")
echo "DEBUG: Versión de watchmedo/path:" $(command -v watchmedo || echo "watchmedo no en PATH")

if command -v watchmedo >/dev/null 2>&1; then
  echo "watchmedo encontrado. Iniciando mkdocs con watchmedo (auto-restart)..."
  # Usamos --recursive y observamos todos los cambios (no filtramos por patrón) para evitar problemas
  # con la sintaxis de patrones en diferentes versiones de watchdog.
  exec watchmedo auto-restart --recursive -- mkdocs serve -a 0.0.0.0:8000
else
  echo "watchmedo no disponible. Usando watcher por polling (watch_poll_restart.py)..."
  echo "DEBUG: procesos antes de lanzar watcher:"
  ps aux | sed -n '1,200p' || true
  exec python3 /usr/local/bin/watch_poll_restart.py
fi

