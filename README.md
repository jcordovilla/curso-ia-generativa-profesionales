# Curso IA Generativa - Profesionales

Repositorio del curso publicado con GitHub Pages, generado desde contenido en `docs/` usando MkDocs (origen en Obsidian).

Este repositorio contiene el contenido del curso en `docs/` y la salida estática en `site/`.

## Qué es
- Contenido creado y organizado con Obsidian, exportado a formato compatible con MkDocs.
- `mkdocs.yml` define la configuración del sitio.
- La carpeta `site/` contiene la versión ya generada lista para publicar.

## Ver el sitio localmente
Recomendado: usar un entorno virtual. En macOS / zsh:

```zsh
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
# instalar MkDocs (y un tema si se requiere, p. ej. mkdocs-material)
pip install mkdocs mkdocs-material

# Servir en local (ver en http://127.0.0.1:8000)
mkdocs serve

# O generar los archivos estáticos en `site/`
mkdocs build
```

Si prefieres que `site/` no esté en el repositorio (recomendado cuando se genera en CI/GitHub Actions), puedes eliminarlo del control de versiones y mantenerlo en `.gitignore`:

```zsh
git rm -r --cached site
git commit -m "Stop tracking generated site/"
```

## Contribuir
- Edita o añade contenido en `docs/` (o en tu flujo de Obsidian que luego exporte a `docs/`).
- Prueba localmente con `mkdocs serve`.
- Haz un Pull Request cuando estés listo.

---

Archivo generado automáticamente por una tarea de mantenimiento: añadidos `.gitignore` y `README.md`.
