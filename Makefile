## Makefile minimal — Docker-only workflow
.PHONY: docker-build serve-docker-run serve-docker-detach docker-stop docker-rmi compose-up compose-down clean

## Construye la imagen local que instala las dependencias desde requirements.txt
docker-build:
	docker build -t uax-algebra:latest .

## Ejecuta la imagen local en primer plano (útil para ver logs)
serve-docker-run: docker-build
	@echo "Running uax-algebra:latest (foreground, named 'uax-algebra') — abre http://127.0.0.1:8000"
	# Ejecutamos con --name para que el contenedor tenga un nombre fijo y podamos seguir los logs con `docker logs -f uax-algebra`
	docker run --rm -it -p 8000:8000 -v "$$PWD":/docs --name uax-algebra uax-algebra:latest

## Ejecuta la imagen local forzando el watcher por polling (útil en macOS)
serve-docker-run-polling: docker-build
	@echo "Running uax-algebra:latest foreground (polling watcher, named 'uax-algebra') — abre http://127.0.0.1:8000"
	# Establecemos USE_POLLING=1 dentro del contenedor para forzar el watcher por polling
	docker run --rm -it -p 8000:8000 -v "$$PWD":/docs -e USE_POLLING=1 --name uax-algebra uax-algebra:latest

## Ejecuta la imagen local en background (detached). Nombre del contenedor: uax-algebra
serve-docker-detach: docker-build
	@echo "Running uax-algebra:latest (detached) — abre http://127.0.0.1:8000"
	docker run --rm -d -p 8000:8000 -v "$$PWD":/docs --name uax-algebra uax-algebra:latest

## Para detener el contenedor nombrado 'uax-algebra'
docker-stop:
	docker stop uax-algebra || true
	docker rm -f uax-algebra || true

## Eliminar la imagen local (si quieres reconstruir desde 0)
docker-rmi:
	docker rmi uax-algebra:latest || true

## docker-compose helpers
compose-up:
	docker-compose up --build

compose-down:
	docker-compose down

up: docker-build
	@echo "Running uax-algebra:latest foreground (polling watcher, named 'uax-algebra') — abre http://127.0.0.1:8000"
	# Establecemos USE_POLLING=1 dentro del contenedor para forzar el watcher por polling
	docker run --rm -it -p 8000:8000 -v "$$PWD":/docs -e USE_POLLING=1 --name uax-algebra uax-algebra:latest

## Limpia artefactos generados
clean:
	# eliminar imagen local y carpeta site
	docker rmi uax-algebra:latest || true
	rm -rf site
