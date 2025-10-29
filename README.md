# uax-algebra

Proyecto de materiales para la asignatura de Álgebra (curso impartido en la Universidad Alfonso X el Sabio - UAX).

Este repositorio contiene la documentación y ejercicios formativos (implementados con MkDocs + Material) usados en el curso. Está preparado para trabajarse localmente con Docker (flujo recomendado) o instalando las dependencias de Python.

## Sitio web

Explora la versión publicada del curso 📚🌐

Aquí se aloja la documentación, apuntes y ejercicios del asignatura, generados con MkDocs + Material. Visita el sitio para ver la versión estática y los contenidos actualizados.

Sitio público: https://raul-drupal-dev.github.io/uax-algebra/

Consejo: para desarrollo local usa Docker (make serve-docker-run) o mkdocs serve si prefieres no usar contenedores.

## Objetivo

Proveer un sitio de documentación y un conjunto de ejercicios que faciliten el aprendizaje del Álgebra Lineal impartido en UAX. El propósito es disponer de:

- Apuntes y temario organizados en `docs/`.
- Ejercicios con enunciados y soluciones (cuando procede).
- Un workflow reproducible para desarrollar y servir la documentación usando Docker o el entorno Python local.

## Requisitos

- Git
- Docker (recomendado) y docker-compose (opcional)
- O bien: Python 3.8+ y pip si deseas ejecutar MkDocs localmente sin contenedores

## Clonar el repositorio

Clona el repositorio en tu máquina:

```bash
git clone https://github.com/raul-drupal-dev/uax-algebra.git
cd uax-algebra
```

## Opciones para ejecutar la documentación

Este proyecto incluye un `Makefile` con objetivos que simplifican el uso de Docker. Está diseñado como "Docker-first" (flujo por defecto), pero también se explica cómo ejecutar MkDocs localmente sin Docker.

1. Ejecutar con Docker (recomendado)

- Construir la imagen local (instala dependencias desde `requirements.txt`):

```bash
make docker-build
```

- Ejecutar en primer plano (útil para ver logs):

```bash
make serve-docker-run
# abre http://127.0.0.1:8000
```

- Ejecutar en primer plano forzando polling (útil en macOS cuando el watcher no detecta cambios):

```bash
make serve-docker-run-polling
```

- Ejecutar en background (detached):

```bash
make serve-docker-detach
```

- Parar el contenedor nombrado `uax-algebra`:

```bash
make docker-stop
```

- Eliminar la imagen local (si quieres reconstruir desde 0):

```bash
make docker-rmi
```

2. Usando docker-compose

Si prefieres usar `docker-compose`:

```bash
make compose-up
# para parar:
make compose-down
```

3. Ejecutar localmente sin Docker (entorno Python)

Recomendado solo si no puedes/quieres usar Docker.

```bash
# crear y activar un entorno virtual (ej. bash)
python3 -m venv .venv
source .venv/bin/activate

# instalar dependencias
pip install -r requirements.txt

# servir con mkdocs (puedes cambiar la dirección si lo necesitas)
mkdocs serve -a 127.0.0.1:8000
```

Nota: en macOS el watcher de archivos puede fallar por la forma en que Docker monta volúmenes; por eso existe la entrada `serve-docker-run-polling` que fuerza el polling dentro del contenedor.

## Construir la web estática

Para generar los archivos estáticos en la carpeta `site/`:

```bash
mkdocs build
# o con Docker, monta y ejecuta mkdocs build dentro del contenedor
```

## Estructura del repositorio

- `docs/` — contenido en formato Markdown que MkDocs sirve.
- `site/` — output estático generado por `mkdocs build` (se suele ignorar en desarrollo).
- `Dockerfile`, `docker-entrypoint.sh` — configuración para ejecutar MkDocs en un contenedor.
- `Makefile` — atajos y tareas de conveniencia (ver arriba).
- `requirements.txt` — dependencias Python necesarias para servir y construir la documentación.

## Contribuir

1. Haz un fork y crea una rama descriptiva.
2. Añade o modifica el contenido dentro de `docs/`.
3. Verifica localmente (con Docker o entorno Python) que MkDocs corre y que no hay errores de build.
4. Abre un Pull Request con una descripción clara de los cambios.

Consejos:

- Ejecuta `mkdocs build` para comprobar que no hay errores de renderizado.
- Mantén los ficheros de contenido en Markdown con un formateo consistente.

## Posibles problemas y soluciones

- Puerto 8000 ocupado: asegúrate de que no hay otro servidor escuchando en 127.0.0.1:8000 o cambia el puerto al servir.
- Problemas con el watcher en macOS: usa `make serve-docker-run-polling` o ejecuta localmente con `mkdocs serve` fuera de Docker.
- Permisos Docker: si Docker requiere sudo en tu entorno, ejecuta los comandos Docker con el prefijo necesario o configura correctamente tu usuario.

## Licencia

Este repositorio incluye un fichero `LICENSE`. Revisa ese archivo para conocer los términos (por ejemplo, MIT si está presente).

## Contacto / Mantenimiento

Repositorio mantenido por `raul-drupal-dev`. Para dudas o contribuciones abre issues o PRs en GitHub.
