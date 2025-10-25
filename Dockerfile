FROM python:3.11-slim

WORKDIR /docs

# Evitar buffers para logs
ENV PYTHONUNBUFFERED=1

# Copiamos requirements y las instalamos
COPY requirements.txt /docs/requirements.txt
RUN pip install --no-cache-dir -r /docs/requirements.txt

# Exponer puerto para mkdocs y puerto de livereload (35729)
EXPOSE 8000
EXPOSE 35729

# Comando por defecto: usar watchmedo (watchdog) para reiniciar mkdocs al detectar cambios.
# watchmedo auto-restart --recursive --pattern="*.md;*.html;*.yml;*.css;*.js" -- mkdocs serve -a 0.0.0.0:8000
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
COPY watch_poll_restart.py /usr/local/bin/watch_poll_restart.py
RUN chmod +x /usr/local/bin/watch_poll_restart.py

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
