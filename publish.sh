#!/usr/bin/env bash
#
# Publica el curso "IA Generativa para Profesionales" en GitHub Pages.
#
# Sincroniza el contenido fuente del vault de Obsidian a docs/, valida el build
# con MkDocs y hace push a main, que dispara el despliegue de GitHub Actions.
#
# Por qué este script: docs/ tiene que contener archivos reales para que el
# runner de CI pueda construirlos. Un enlace simbólico a una ruta local rompe el
# build en CI. Este script mantiene el modelo correcto (archivos reales en docs/)
# sin volver al lío del symlink.
#
# Uso:
#   ./publish.sh                       # mensaje de commit con fecha automática
#   ./publish.sh "mensaje de commit"   # mensaje propio
#
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="/Users/jose/obsidian/JC/1.PROYECTOS/AI-Pub/IA Generativa Profesionales"
DOCS="$REPO_DIR/docs"
URL="https://jcordovilla.github.io/curso-ia-generativa-profesionales/"

cd "$REPO_DIR"

if [ ! -d "$SRC" ]; then
  echo "ERROR: no encuentro la carpeta fuente del vault:"
  echo "  $SRC"
  exit 1
fi

echo "==> 1/4 Sincronizando contenido desde el vault a docs/ ..."
mkdir -p "$DOCS"
rsync -a --delete --exclude='.DS_Store' "$SRC/" "$DOCS/"

echo "==> 2/4 Validando el build (mkdocs build --strict) ..."
if [ -d "$REPO_DIR/.venv" ]; then
  # shellcheck disable=SC1091
  source "$REPO_DIR/.venv/bin/activate"
fi
mkdocs build --strict

if [ -z "$(git status --porcelain)" ]; then
  echo "==> 3/4 No hay cambios que publicar. El sitio ya está al día."
  echo "    $URL"
  exit 0
fi

MSG="${1:-Actualizar curso desde Obsidian ($(date '+%Y-%m-%d %H:%M'))}"
echo "==> 3/4 Confirmando cambios: $MSG"
git add -A
git commit -q -m "$MSG"

echo "==> 4/4 Publicando (push a main) ..."
git push origin main

echo ""
echo "Hecho. GitHub Actions desplegará en GitHub Pages en ~30 segundos."
echo "  $URL"
echo "Seguimiento del despliegue:  gh run watch --exit-status"
