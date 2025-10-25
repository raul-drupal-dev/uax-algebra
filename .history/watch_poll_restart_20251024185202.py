
#!/usr/bin/env python3
"""
watch_poll_restart.py

Pequeño watcher por polling que reinicia `mkdocs serve` cuando detecta cambios
en ficheros dentro de la carpeta /docs (extensiones: md, yml, css, js, html).

Usamos polling para entornos donde los inotify/FSEvents no funcionan bien
con volúmenes montados (por ejemplo Docker en macOS).
"""
import os
import sys
import time
import subprocess
import signal

ROOT = os.environ.get('DOCS_ROOT', '/docs')
EXTS = {'.md', '.markdown', '.yml', '.yaml', '.css', '.js', '.html'}
POLL_INTERVAL = 1.0


def scan_files(root):
    files = {}
    for dirpath, _, filenames in os.walk(root):
        for fn in filenames:
            _, ext = os.path.splitext(fn)
            if ext.lower() in EXTS:
                path = os.path.join(dirpath, fn)
                try:
                    files[path] = os.path.getmtime(path)
                except OSError:
                    pass
    return files


def start_mkdocs():
    print('Starting mkdocs serve...')
    # stdout/stderr go to container logs
    p = subprocess.Popen(['mkdocs', 'serve', '-a', '0.0.0.0:8000'])
    return p


def stop_process(p):
    if p is None:
        return
    try:
        p.terminate()
        p.wait(timeout=5)
    except Exception:
        try:
            p.kill()
        except Exception:
            pass


def main():
    os.chdir(ROOT)
    old = scan_files(ROOT)
    proc = start_mkdocs()
    try:
        while True:
            time.sleep(POLL_INTERVAL)
            new = scan_files(ROOT)
            if new.keys() != old.keys():
                added = set(new.keys()) - set(old.keys())
                removed = set(old.keys()) - set(new.keys())
                if added:
                    print('Detected file(s) added:', ', '.join(list(added)[:5]))
                if removed:
                    print('Detected file(s) removed:', ', '.join(list(removed)[:5]))
                print('Restarting mkdocs...')
                stop_process(proc)
                proc = start_mkdocs()
                old = new
                continue
            # check mtimes
            changed = False
            for path, mtime in new.items():
                if path not in old or old.get(path) != mtime:
                    changed = True
                    break
            if changed:
                changed_files = [p for p in new.keys() if p not in old or old.get(p) != new.get(p)]
                print('Detected modification in:', ', '.join(changed_files[:5]))
                print('Restarting mkdocs...')
                stop_process(proc)
                proc = start_mkdocs()
                old = new

    except KeyboardInterrupt:
        print('Shutting down...')
        stop_process(proc)


if __name__ == '__main__':
    main()
